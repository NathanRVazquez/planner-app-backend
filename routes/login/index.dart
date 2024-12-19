import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart';
// import the prisma client so prisma functions can run
import '../../prisma/generated_dart_client/client.dart';
import '../../prisma/generated_dart_client/prisma.dart';

final prisma = PrismaClient();

/* Dart frog only has one function call onRequest that is called any time the 
route is called. Therefore we are using a switch statement to determine what
function should be called based on the HTTP method sent
 */
Future<Response> onRequest(RequestContext context) async{
  return switch(context.request.method){
    HttpMethod.post => _loginUser(context),
    _=> Future.value(Response(body:'default message, http method not set'))
  };
}

/*This function creates new user with some given exceptions
The functions returns a message letting you know what error you ran into or if
the user was created successfully

the function requires a context argument to get the users json data when the route 
is called
 */
Future<Response> _loginUser(RequestContext context)async{
  // transform the information from the request into json in the form of a map
  final json = (await context.request.json()) as Map<String,dynamic>;
  //function tries to create user, if there are errors it will output those errors
  try{
    /* assign the email, password of the user
    as data-type casts the dynamic into the data-type of the attribute
    a ternary operator is used to determine if the variable is a string, 
    can be converted to a string or should be defaulted to an empty string
    defaulting to an empty string prevents null errors */
    final email = json['email'] is String ? json['email'] as String : '';
    final password = json['password'] is String ? json['password'] as String : '';
      // empty names or passwords are not allowed and throw a format exception
      if (password == ''|| email=='' ){
        // function catched format exceptions and lets user know about error
        // https://www.dhiwise.com/post/dart-throw-how-to-effectively-handle-errors-and-exceptions
        throw Exception('email or password is empty');
      }

    /* find the first row with the matching email. the emails should be unique 
    I may need to fix that at a later point.    
    */
    final user = await prisma.users.findFirst(
      where: UsersWhereInput(
        email: PrismaUnion.$1(
          StringFilter(contains: PrismaUnion.$1(email)),
        ),
      ),
    );
    
    // if the user is null we should throw an error so the server doesnt crash
    if(user == null){
      throw Exception('user is null');
    }

    // if the password matches the user rows password, then the user can login
    // this might occur somewhere else as we need to use Firebase Auth SDK or something similar
    if (user.password == password){
      return Response.json(
        body:{
          'message':'User Found!',
          'user':{
            email: email,
          },
        },
      );
    }else{
      return Response.json(
        body:{
          'message':'Incorrect Credentials!',
        },
      );
    }

    // Todo: user should be able to login with username. make username unique field in schema

    // the error handling is defined below
    // there may be more errors but these have been the most common issues I have seen
  }catch (e){
    if(e.toString().contains('null')){
      return Response.json(
        body:{
          'message':'one of the required fields was left blank, required name, password',
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
