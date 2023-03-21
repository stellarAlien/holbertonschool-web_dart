import 'dart:convert';
import 'dart:async';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final decodedData = json.decode(userData);
    final username = decodedData['username'];
    print('There is a user: true');
    return 'Hello ${username}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final credentialsValid = await checkCredentials();
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