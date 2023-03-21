import 'dart:convert';
import 'dart:async';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => false);

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final decodedData = json.decode(userData);
    return 'Hello ${decodedData['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final credentialsValid = await checkCredentials();
     if (credentialsValid) {
      print('There is a user: $credentialsValid');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}