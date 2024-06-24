import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final String jsonData = await fetchUserData();
    final Map<String, dynamic> userData = json.decode(jsonData);
    final String user = userData['username'];
    return 'Hello, $user!';
  } catch (e) {
    return 'Error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    final bool isValid = await checkCredentials();
    final String greetingMessage = await greetUser();

    if (isValid) {
      print('User authentication: true');
      return greetingMessage;
    } else {
      print('User authentication: false');
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'Error caught: $e';
  }
}
