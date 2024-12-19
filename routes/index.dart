import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  // TODO: implement route handler

  // we can write context.request to access the request sent by user
  // we can acces the http method using request.method.value
  final request = context.request;

  final method = request.method.value;


 
 
  return Response(body: 'This is the http Method $method!');
}

 // we can access request headers using context.request.headers

  // we can access the query parameters via context.request.uri.queryParameters
   //can be used to output value of the parameter final name = params['name'] ?? 'there';
  // curl --request GET --url http://localhost:8080?name=Dash


  // We can access the body of the incoming request via context.request.body()
  //   return Response(body: 'The body is "$body".');
  // also change return type Future<Response>

  //We can use context.request.json() to read the contents of the request body
  // as a Map<String, dynamic>
  // final body = await request.json();
  // return Response.json(body: {'request_body': body})
  //  change return type Future<Response>

  // Form Data
  // Change response type - Future<Response>
  // final formData = await request.formData();
  // return Response.json(body: {'form_data': formData.fields});

  // Responses
  // return Response(statusCode: 204);
  // ALWAYS RETURN STATUS CODE

  // MAKE SURE DART SERVER COMES BACK ONLINE IF Taken down

  // Dynamic Routes
  // in path
  //
  
 