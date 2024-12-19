// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
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
    HttpMethod.post => _getUsersAssignments(context),
    _=> Future.value(Response(body:'default message, http method not set'))
  };
}


/* if a get request is sent then call getReminders(). 
 getReminders will return all the reminders for a user
 get reminders takes context from the body of the API request. It needs
 the users email to find a given users reminders*/
Future<Response> _getUsersAssignments(RequestContext context) async {
  /* save all body data as a Map<string,dynamic>. A map<string, dynamic> 
  is a hashmap that has the first value labeled as a string and the second 
  value defined as dynamic because it can be any type*/
  try{
    final json = (await context.request.json()) as Map<String,dynamic>;

    /* cast the email of the user as a string type
    a ternary operator is used to determine if the variable is a string, 
    can be converted to a string or should be defaulted to an empty string
    defaulting to an empty string prevents null errors */

    // use map or fold instead of cast, where type 
    final email = json['email'] is String ? json['email'] as String : '';
    String assignment_type = json['assignment_type'] is String ? json['assignment_type'] as String : '';
    assignment_type = assignment_type.toLowerCase();
    // empty names or passwords are not allowed and throw a format exception
    if (email == '' ){
      // function catched format exceptions and lets user know about error
      // https://www.dhiwise.com/post/dart-throw-how-to-effectively-handle-errors-and-exceptions
      throw Exception('email is empty');
    }

    /* find the first row with the matching email. we could also use find unique
    this is getting the users userid from their email.
      The email must be in the body of the request
    */
    final user = await prisma.users.findFirst(
      where: UsersWhereInput(
        email: PrismaUnion.$1(
          StringFilter(equals: PrismaUnion.$1(email)),
        ),
      ),
    );
    
    // if the user is not found then an error is made
    // since the front end is calling this route, there should be no errors
    Iterable<Assignments> users_assignments;
    if(user==null){
      throw Exception('user not found');
    }

    // with the users id we are going to retrieve all the assignments with type reminder
    // and send them as a encoded JSON object. We need to decode them in the front end using 
    // dart methods
    print('Assignment Type:');
    print(assignment_type);
    if(assignment_type == 'tasks'){
      users_assignments = await prisma.assignments.findMany(
        // the where clause lets us choose what assignment attribute we want to filter by
        where:   AssignmentsWhereInput(
          userId:  PrismaUnion.$1(
          StringFilter(equals: PrismaUnion.$1(user.userId!)),
          ),
          assignmentType: PrismaUnion.$1(EnumassignmentTypeFilter(
            // the assignment type must equal reminder
            equals: PrismaUnion.$1(AssignmentType.task),
          ),),
          //the todoLists is its own table 
        ),
        include: const AssignmentsInclude(
          // include all tuples from reminders and todo lists 
          // this should be joining the reminders table, assignments and todolists tables
          // TODO: verify all tables are being joined properly
          tasks: PrismaUnion.$1(true),

        ),
      );
    }else if(assignment_type == 'reminders'){
      users_assignments = await prisma.assignments.findMany(
        // the where clause lets us choose what assignment attribute we want to filter by
        where:   AssignmentsWhereInput(
          userId:  PrismaUnion.$1(
          StringFilter(equals: PrismaUnion.$1(user.userId!)),
          ),
          // we use union to return a datatype that could be null
          assignmentType: PrismaUnion.$1(EnumassignmentTypeFilter(
            // the assignment type must equal reminder
            equals: PrismaUnion.$1(AssignmentType.reminder),
          ),),
          //the todoLists is its own table 
        ),
        include: const AssignmentsInclude(
          // include all tuples from reminders and todo lists 
          // this should be joining the reminders table, assignments and todolists tables
          // TODO: verify all tables are being joined properly
          reminders: PrismaUnion.$1(true),
        ),
      );


    // // returning a message in console to show all reminders
    // for (final element in users_assignments){
    //   // the reminders.reminderCategory will throw errors if the assignment is not in the reminders table
    //   print('Task subject: ${element.subject}, The Author is: ${user.username}, ${element.reminders?.reminderCategory} ');
    // }


    }else if (assignment_type == 'projects'){
            users_assignments = await prisma.assignments.findMany(
        // the where clause lets us choose what assignment attribute we want to filter by
        where:   AssignmentsWhereInput(
          userId:  PrismaUnion.$1(
          StringFilter(equals: PrismaUnion.$1(user.userId!)),
          ),
          // we use union to return a datatype that could be null
          assignmentType: PrismaUnion.$1(EnumassignmentTypeFilter(
            // the assignment type must equal reminder
            equals: PrismaUnion.$1(AssignmentType.project),
          ),),
          //the todoLists is its own table 
        ),
        include: const AssignmentsInclude(
          // include all tuples from reminders and todo lists 
          // this should be joining the reminders table, assignments and todolists tables
          // TODO: verify all tables are being joined properly
          projects: PrismaUnion.$1(true),
        ),
      );
    }else{
      users_assignments = await prisma.assignments.findMany(
        where: AssignmentsWhereInput(
          userId:  PrismaUnion.$1(
          StringFilter(equals: PrismaUnion.$1(user.userId!)),
          ),
        ),
        // the where clause lets us choose what assignment attribute we want to filter by
        include: const AssignmentsInclude(
          
          // include all tuples from reminders and todo lists 
          // this should be joining the reminders table, assignments and todolists tables
          // TODO: verify all tables are being joined properly
          tasks:PrismaUnion.$1(true),
          reminders: PrismaUnion.$1(true),
          projects: PrismaUnion.$1(true),

        ),
      );
    }

    // if ther user has no reminders then we can throw an error for the user
    if(users_assignments.isEmpty){
      throw Exception('user has no assignments');
    }
// "assignment_type":"reminders"
    // returning a message in console to show all reminders
    for (final element in users_assignments){
      // the reminders.reminderCategory will throw errors if the assignment is not in the reminders table
      print('${element.assignmentType?.name} subject: ${element.subject}, The Author is: ${user.username},complete status ${element.tasks?.completed} the event type: ${element.reminders?.reminderCategory} ');
    }

    return Response.json(body: jsonEncode(users_assignments.toList()));
    // https://codewithandrea.com/articles/parse-json-dart/
  }catch (e){
    return Response.json(body: '$e');
  }
}
