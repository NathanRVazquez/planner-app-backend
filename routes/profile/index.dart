import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart';
// import the prisam client so prisma functions can run
import '../../prisma/generated_dart_client/client.dart';
import '../../prisma/generated_dart_client/prisma.dart';

final prisma = PrismaClient();

/* Dart frog only has one function call onRequest that is called any time the 
route is called. Therefore we are using a switch statement to determine what
function should be called based on the HTTP method sent
 */
Future<Response> onRequest(RequestContext context) async{
  return switch(context.request.method){
    HttpMethod.post => _getUsersDetails(context),
    _=> Future.value(Response(body:'default message, http method not set'))
  };
}

/* if a get request is sent then call get Users. 
 get users doesn't take any arguments or context as its called in dart
 the function returns a response saying all users are displayed and the users 
 printed to the console */
Future<Response> _getUsersDetails(context) async {
  /* findMany() returns all the tuples in a given table
  the function returns a iterable type. Iterable is a list in Dart that doesn't 
  have the ability to be randomly accessed*/
  // https://dart.dev/libraries/collections/iterables
  final users = await prisma.users.findMany();
  // I am looping through every item in the iterable list and printing its id 
  //  and name to the dart console. This can be removed if the iterable is returned and read client side
  for (final element in users){
    print('users ID is ${element.userId}, the users name is: ${element.name}');
  }
  // returning a message that lets user know that all users were read successfully
  return Response.json(
    body:{'message':'all users displayed'},
  );

}

/*This function creates new user with some given exceptions
The functions returns a message letting you know what error you ran into or if
the user was created successfully

the function requires a context argument to get the users json data when the route 
is called

 */
Future<Response> _createUser(RequestContext context)async{
  // transform the information from the request into json in the form of a map
  final json = (await context.request.json()) as Map<String,dynamic>;
  //function tries to create user, if there are errors it will output those errors
  try{
    //assign the name, email, password, username and timezone  of the user
    //as data-type casts the dynamic into the data-type of the attribute
  final name = json['name'] as String;
  final email = json ['email'] as String;
  final password = json['password'] as String;
  final username = json['username'] as String;
  final userTimezone = json ['userTimeZone']as int;
  // empty names, username, emails or passwords are not allowed and throw a format exception
  if (username=='' || password==''|| email=='' || name==''){
    // function catched format exceptions and lets user know about error
    // https://www.dhiwise.com/post/dart-throw-how-to-effectively-handle-errors-and-exceptions
    throw const FormatException();
  }
  // if the values are not null, then prisma will try to create the user 
  await prisma.users.create(
    data: PrismaUnion.$1(UsersCreateInput(
      username: username,
      name: name,
      email: email.toLowerCase(),
      password: password,
      userTimezone: PrismaUnion.$1(userTimezone),

    ),),
  );
  //  as  a security measure I need to add hashing for the passwords. 
  // I will comeback and add this if I have time
  // if the transaction is successfull the user is created and the details are displayed
  return Response.json(
    body:{
      'message':'Saved!',
      'user':{
        username: username,
        name: name,
        email: email.toLowerCase(),
      },
    },
  );
  // the error handling is defined below
  // there may be more errors but these have been the most common issues I have seen
  }on FormatException {
    return Response.json(
      body:{
        'message':'error, missing data or incorrect data entered into form',
      },
    );
  }catch (e){
    if(e.toString().contains('username')){
      return Response.json(
        body:{
          'message':'username already taken, please enter a new username',
          },
        );
    }if(e.toString().contains('email')){
      return Response.json(
        body:{
          'message':'email already taken, please enter a new email',
          },
        );
    }if(e.toString().contains('null')){
      return Response.json(
        body:{
          'message':'one of the required fields was left blank, required name, username, password, email and timezone fields',
          },
        );
    }else{
    return Response.json(
      body:{
        // any unseen errors will pop up here so they can be fixed
        'message':'error message: $e',
        },
      );
    }
  }
}
