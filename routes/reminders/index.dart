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
    HttpMethod.post => _createReminders(context),
    HttpMethod.patch => _updateReminder(context),
    HttpMethod.delete => _deleteReminder(context),
    _=> Future.value(Response(body:'default message, http method not set'))
  };
}

/*
  This function recieves a string and returns a remindercategory type 
  it uses an if statement to detemine what is the value of the given string
  the argument is a string that holds what the reminder category is
  if no proper value is found, other is returned 
*/
ReminderCategory returnReminderType(String stringReminderCat){

  ReminderCategory reminderCat = ReminderCategory.other;
  stringReminderCat = stringReminderCat.toLowerCase();
  if(stringReminderCat == 'event' ){
    reminderCat= ReminderCategory.event;
  }else if(stringReminderCat == 'meeting' ){
    reminderCat= ReminderCategory.meeting;
  }else if(stringReminderCat == 'webinar' ){
    reminderCat= ReminderCategory.webinar;
  }else if(stringReminderCat == 'interview' ){
    reminderCat= ReminderCategory.interview;
  }else if(stringReminderCat == 'tutoring' ){
    reminderCat= ReminderCategory.tutoring;
  }

  return reminderCat;

}

/*
_createReminders will create a reminder for a user.
It requires the following fields:subject and email.
 I already set the assignment type, and create date
Optional fields: due_date, notes, reminder type, 
 */
Future<Response> _createReminders(RequestContext context)async{
  
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
    var dueDate = json['due_date'] ;
    final stringReminderCat = json['reminder_category'] != null ? json['reminder_category'] as String : '' ;
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
        dueDate: dueDate!= null ? PrismaUnion.$1(dueDate as DateTime) : null,  
        assignmentType:  AssignmentType.reminder,
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

    final created_reminder = await prisma.reminders.create(
      data: PrismaUnion.$1(RemindersCreateInput(
        reminderCategory: returnReminderType(stringReminderCat),
        assignments:  AssignmentsCreateNestedOneWithoutRemindersInput(
          connect: AssignmentsWhereUniqueInput(
            assignmentId:  created_assignment.assignmentId,
          ),
        ),
      ),),
    );

    print('successfully created reminder');
  
    return Response.json(
      body:{
        'message':'Saved!',
        'Reminder':{
          'assignment_id': created_assignment.assignmentId,
          'subject': created_assignment.subject,
          'notes': created_assignment.notes,
          'due_date': created_assignment.dueDate.toString(),
          'reminder_category' : created_reminder.reminderCategory.toString(),
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



Future<Response> _updateReminder(RequestContext context) async {
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
    final newSubject = json['subject'] as String?;
    final newNotes = json['notes'] as String?;
    final  newDueDate = json ['due_date'] as DateTime?;
    final stringReminderCat = json ['reminder_category'] as String?;
    final now = DateTime.now();
    List<Map<String, Object?>> assignment;
    if(newSubject != null){
       assignment = await prisma.$raw.query(
        'UPDATE assignments SET "subject" = \$1, "updated_at" = \$2 FROM reminders WHERE assignments.assignment_id = \$3 AND assignments.assignment_id = reminders.assignment_id RETURNING *',
      [newSubject, now, assignmentId], // Bind parameters
      );
    }else if(newNotes != null){
        assignment = await prisma.$raw.query(
        'UPDATE assignments SET notes = \$1, "updated_at" = \$2 FROM reminders WHERE assignments.assignment_id = \$3 AND assignments.assignment_id = reminders.assignment_id RETURNING *',
        [newNotes, now ,assignmentId],
      );
    }else if(stringReminderCat != null){
      ReminderCategory remind_cat = returnReminderType(stringReminderCat);

      await prisma.$raw.query(
      'UPDATE assignments SET "updated_at" = \$1 WHERE assignments.assignment_id = \$2 ',
      [now, assignmentId],
      );

      assignment = await prisma.$raw.query(
      'UPDATE reminders SET reminder_category = \$1::"reminder_category" FROM assignments WHERE reminders.assignment_id = \$2 AND assignments.assignment_id = reminders.assignment_id RETURNING *',
      [remind_cat.name, assignmentId],
      );
    }else if(newDueDate != null){
        assignment = await prisma.$raw.query(
      'UPDATE assignments SET "subject" = \$1, "updated_at" = \$2 FROM reminders WHERE assignments.assignment_id = \$3 AND reminders.assignment_id = assignments.assignment_id RETURNING *',
      [newDueDate, now, assignmentId], // Bind parameters
      );
    }else{
      throw Exception('notes, subject, dueDate, and reminderCategory were null');
    }

    Map<String, Object?> updatedAssignment = assignment.first;

    // return Response.json(body: jsonEncode(assignment));
  return Response.json(
      body:{
        'message':'Reminder updated!',
        'Reminder': {
          'assignment_id' : updatedAssignment['assignment_id'],
          'update_at' : updatedAssignment['updated_at'].toString(),
          'subject': updatedAssignment['subject'],
          'dueDate': updatedAssignment['due_date'].toString(),
          'notes': updatedAssignment['notes'],
          'reminder_category' : updatedAssignment['reminder_category'],
        },
      },
    );    // https://codewithandrea.com/articles/parse-json-dart/
  }catch (e){
    return Response.json(body: '$e');
  }
}

Future<Response> _deleteReminder(RequestContext context) async{

  try{

    final json = (await context.request.json()) as Map<String,dynamic>;
    // final email = json['email'] is String ? json['email'] as String : '';
    final assignmentId = json['assignment_id'] as String;
    await prisma.reminders.delete(
        where: RemindersWhereUniqueInput(assignmentId: assignmentId),
    );

   await prisma.assignments.delete(
        where: AssignmentsWhereUniqueInput(assignmentId: assignmentId),
    );

  }catch(e){
    return Response.json(body: '$e');
  }
    return Response(body: 'Reminder deleted');
  }
