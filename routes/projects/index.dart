// ignore_for_file: lines_longer_than_80_chars
import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart';
// import 'package:postgres/messages.dart';
// import the prisma client so prisma functions can run
import '../../prisma/generated_dart_client/client.dart';
import '../../prisma/generated_dart_client/model.dart';
import '../../prisma/generated_dart_client/prisma.dart';
final prisma = PrismaClient();

// TODO: encode all the create reminders and patched reminders into encoded JSON
// TODO: update DB Schema
// TODO: Update code with new schema relations

/* Dart frog only has one function call onRequest that is called any time the 
route is called. Therefore we are using a switch statement to determine what
function should be called based on the HTTP method sent
 */

Future<Response> onRequest(RequestContext context) async{
  return switch(context.request.method){
    HttpMethod.post => _createProject(context),
    HttpMethod.patch => _updateProject(context),
    HttpMethod.delete => _deleteProject(context),
    _=> Future.value(Response(body:'default message, http method not set'))
  };
}

Future<bool> markSubtasksComplete(String project_id, DateTime curr_time) async{


    final project_subtasks = await prisma.tasks.findMany(
      // the where clause lets us choose what assignment attribute we want to filter by
      where: TasksWhereInput(
        // we use union to return a datatype that could be null
        parentProject: PrismaUnion.$1(
          StringNullableFilter(
            equals: PrismaUnion.$1(project_id),
          ),
        ),
      ),
    );

    // if ther user has no reminders then we can throw an error for the user
    if(project_subtasks.isEmpty){
      return true;
    }

    // returning a message in console to show all reminders
    for (final element in project_subtasks){
      // the reminders.reminderCategory will throw errors if the assignment is not in the reminders table
    
      final task = await prisma.$raw.query(
        'UPDATE tasks SET completed = true, complete_date = \$1 FROM assignments WHERE tasks.assignment_id = \$2 AND assignments.assignment_id = tasks.assignment_id RETURNING *',
        [curr_time, element.assignmentId!],
      );

      Map<String, Object?> curr_task = task.first;

      print(' current task: ${curr_task['subject']} has a status of ${curr_task['completed']}');

    }

    return true;
}

Future<bool> markSubtasksIncomplete(String project_id, DateTime curr_time) async{


    final project_subtasks = await prisma.tasks.findMany(
      // the where clause lets us choose what assignment attribute we want to filter by
      where: TasksWhereInput(
        // we use union to return a datatype that could be null
        parentProject: PrismaUnion.$1(
          StringNullableFilter(
            equals: PrismaUnion.$1(project_id),
          ),
        ),
      ),
    );

    // if ther user has no reminders then we can throw an error for the user
    if(project_subtasks.isEmpty){
      return true;
    }

    // returning a message in console to show all reminders
    for (final element in project_subtasks){
      // the reminders.reminderCategory will throw errors if the assignment is not in the reminders table
    
      final task = await prisma.$raw.query(
        'UPDATE tasks SET completed = false, complete_date = null FROM assignments WHERE tasks.assignment_id = \$1 AND assignments.assignment_id = tasks.assignment_id RETURNING *',
        [element.assignmentId!],
      );

      Map<String, Object?> curr_task = task.first;

      print(' current task: ${curr_task['subject']} has a status of ${curr_task['completed']}');

    }

    return true;
}

Future<bool> deleteSubtasks(String project_id) async{


    final project_subtasks = await prisma.tasks.findMany(
      // the where clause lets us choose what assignment attribute we want to filter by
      where: TasksWhereInput(
        // we use union to return a datatype that could be null
        parentProject: PrismaUnion.$1(
          StringNullableFilter(
            equals: PrismaUnion.$1(project_id),
          ),
        ),
      ),
    );

    // if ther user has no reminders then we can throw an error for the user
    if(project_subtasks.isEmpty){
      return true;
    }

    for (final element in project_subtasks){
      // the reminders.reminderCategory will throw errors if the assignment is not in the reminders table
      
      await prisma.tasks.delete(
          where: TasksWhereUniqueInput(assignmentId: element.assignmentId),
      );
       
      await prisma.assignments.delete(
        where: AssignmentsWhereUniqueInput(assignmentId: element.assignmentId),
      );

    }

    return true;
}

/*
_createReminders will create a reminder for a user.
It requires the following fields:subject and email.
 I already set the assignment type, and create date
Optional fields: due_date, notes, reminder type, 
 */
Future<Response> _createProject(RequestContext context) async {
  
  // transform the information from the request into json in the form of a map
  final json = (await context.request.json()) as Map<String,dynamic>;
  try{
    /* cast the email of the user asa string
    a ternary operator is used to determine if the variable is a string, 
    can be converted to a string or should be defaulted to an empty string
    defaulting to an empty string prevents null errors */
    final email = json['email'] is String ? json['email'] as String : '';
      // empty names or passwords are not allowed and throw a format exception
      if ( email=='' ){
        // function caught exceptions and lets user know about error
        // https://www.dhiwise.com/post/dart-throw-how-to-effectively-handle-errors-and-exceptions
        throw Exception('email is empty');
      }

    /* find the first row with the matching email. the emails must be unique 
    */
    final user = await prisma.users.findFirst(
      where: UsersWhereInput(
        email: PrismaUnion.$1(
          StringFilter(contains: PrismaUnion.$1(email)),
        ),
      ),
    );


    //if no user is found throw an error
    if (user==null){
      // no user found, throw error
      throw Exception('user not found/ incorrect email');
    }

    print('user found');


    final subject = json['subject'] as String;
    var notes = json['notes'];
    var dueDate = json['due_date']  ;
    // Subject field is required
    if ( subject==''){
    // function catched format exceptions and lets user know about error
    // https://www.dhiwise.com/post/dart-throw-how-to-effectively-handle-errors-and-exceptions
    throw Exception('subject empty');
    }
    // the below may not be neccessary since the path is determined by the assignment type

    //retrieve users list id
    // if the values are not null, then prisma will try to create the user 
    final created_assignment = await prisma.assignments.create(
      data: PrismaUnion.$1(AssignmentsCreateInput(
        subject: subject,
        notes: notes!= null ? PrismaUnion.$1(notes as String) : null,
        dueDate: dueDate!= null ? PrismaUnion.$1(DateTime.parse(dueDate as String)) : null,  
        assignmentType:  AssignmentType.project,
        users: UsersCreateNestedOneWithoutAssignmentsInput(
          connect: UsersWhereUniqueInput(
            userId: user.userId,
          ),
        ),
      ),),
    );

    print('successfully created an assignment');
    // we call the database to get the last created assignment so we can save it 
    // as a reminder
 

    print('successfully found users last created assignment');
    Projects created_project;
     created_project = await prisma.projects.create(
        data: PrismaUnion.$1(ProjectsCreateInput(
          completed: false,
          assignments:  AssignmentsCreateNestedOneWithoutProjectsInput(
            connect: AssignmentsWhereUniqueInput(
              assignmentId:  created_assignment.assignmentId,
            ),
          ),
        ),),
      );

    print('successfully created task');
  
    return Response.json(
      body:{
        'message':'Saved!',
        'Project':{
          'assignment_id':  created_assignment.assignmentId,
          'subject':        created_assignment.subject,
          'notes':          created_assignment.notes,
          'due_date':       created_assignment.dueDate.toString(),
          'completed' :     created_project.completed ,
        },
      },
    );
  // the error handling is defined below
  // there may be more errors but these have been the most common issues I have seen

  }catch (e){

    return Response.json(
      body:{
        // any unseen errors will pop up here so they can be fixed
        'message':'error message: $e',
        },
      );
    
  }
}

Future<Response> _updateProject(RequestContext context) async {
  /* save all body data as a Map<string,dynamic>. A map<string, dynamic> 
  is a hashmap that has the first value labeled as a string and the second 
  value defined as dynamic because it can be any type*/
  try{
    final json = (await context.request.json()) as Map<String,dynamic>;

    /* cast the email of the user as a string type
    a ternary operator is used to determine if the variable is a string, 
    can be converted to a string or should be defaulted to an empty string
    defaulting to an empty string prevents null errors */
    final assignmentId = json['assignment_id'] as String;
    if(assignmentId == ''){throw Exception('assignment_id is an empty string');}

    var newSubject = json ['subject'] is String ? json ['subject'] as String : '';
    var newNotes = json ['notes'] is String ? json ['notes'] as String : '';
    String? dueDate = json ['due_date'] is String ? json ['due_date'] as String : '';
    var completed = json ['completed'] is bool ? json['completed'] as bool : null;
    final now = DateTime.now();
    List<Map<String, Object?>> assignment;
    
    if(newSubject == ''){
      throw Exception('The subject field can not be empty');
    }    

    final retrieved_project = await prisma.projects.findUnique(
      where: ProjectsWhereUniqueInput(
        assignmentId: assignmentId,
      ),
    );

    if(retrieved_project == null ){
      throw Exception('assignment id incorrect');
    }

      completed ??= retrieved_project.completed;


      if(dueDate != ''){
        final newDueDate = DateTime.parse(dueDate);
      
        await prisma.$raw.query(
        'UPDATE assignments SET "updated_at" = \$1, "subject" = \$2, "notes" = \$3, "due_date" = \$4 WHERE assignments.assignment_id = \$5 ',
        [now, newSubject, newNotes, newDueDate, assignmentId],
        );

      }else{

        await prisma.$raw.query(
        'UPDATE assignments SET "updated_at" = \$1, "subject" = \$2, "notes" = \$3, "due_date" = null WHERE assignments.assignment_id = \$4 ',
        [now, newSubject, newNotes, assignmentId],
        );

      }


      if(completed!){

        assignment = await prisma.$raw.query(
        'UPDATE projects SET completed = true, complete_date = \$1 FROM assignments WHERE projects.assignment_id = \$2 AND assignments.assignment_id = projects.assignment_id RETURNING *',
        [now, assignmentId],
        );

              // call function to complete sub assignments
        Map<String, Object?> curr_assignment = assignment.first;
        String curr_assignment_id = curr_assignment['assignment_id']! as String;
        bool subtasks_marked_completed = await markSubtasksComplete(curr_assignment_id, now);
        if(!subtasks_marked_completed){throw Exception('error updating subtasks');}

      }else{
        assignment = await prisma.$raw.query(
          'UPDATE projects SET completed = false, complete_date = null FROM assignments WHERE projects.assignment_id = \$1 AND assignments.assignment_id = projects.assignment_id RETURNING *',
          [assignmentId],
        );

        Map<String, Object?> curr_assignment = assignment.first;
        String curr_assignment_id = curr_assignment['assignment_id']! as String;
        bool subtasks_marked_incomplete = await markSubtasksIncomplete(curr_assignment_id, now);
        if(!subtasks_marked_incomplete){throw Exception('error updating subtasks');}
      }




  
    Map<String, Object?> updatedAssignment = assignment.first;

    // return Response.json(body: jsonEncode(assignment));
  return Response.json(
      body:{
        'message':'Project updated!',
        'Project': {
          'assignment_id' :     updatedAssignment['assignment_id'],
          'update_at' :         updatedAssignment['updated_at'].toString(),
          'subject':            updatedAssignment['subject'],
          'dueDate':            updatedAssignment['due_date'].toString(),
          'notes':              updatedAssignment['notes'],
          'completed' :         updatedAssignment['completed'],
          'completed_date':     updatedAssignment['complete_date'].toString(),
        },
      },
    );    // https://codewithandrea.com/articles/parse-json-dart/
  }catch (e){
    return Response.json(body: '$e');
  }
}

Future<Response> _deleteProject(RequestContext context) async{

  try{

    final json = (await context.request.json()) as Map<String,dynamic>;
    final assignmentId = json['assignment_id'] as String;

    bool subtasksDeleted = await deleteSubtasks(assignmentId);

    if(!subtasksDeleted){throw Exception('error updating subtasks');}

    await prisma.projects.delete(
        where: ProjectsWhereUniqueInput(assignmentId: assignmentId),
    );

   await prisma.assignments.delete(
        where: AssignmentsWhereUniqueInput(assignmentId: assignmentId),
    );


  }catch(e){
    return Response.json(body: '$e');
  }
    return Response(body: 'Project deleted');
  }
