import 'dart:convert';
import '3-util.dart';


Future<String> loginUser() async {
  try {
    final credentialsValid = await checkCredentials();
    print('There is a user: $credentialsValid');
    if (credentialsValid) {
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}