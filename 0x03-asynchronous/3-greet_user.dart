import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String jsonData = await fetchUserData();
    Map<String, dynamic> userData = json.decode(jsonData);
    String user = userData['username'];
    return('Hello $user');
  } catch (e) {
    return('error caught: $e');
  }
}

Future<String> loginUser() async {
  try {
    bool creds = await checkCredentials();
    String greetings = await greetUser();
    if (creds == true) {
      print('There is a user: true');
      return greetings;
    } else {
      print('There is a user: false');
      return('Wrong credentials');
    }
  } catch (e) {
    return('error caught: $e');
  }
} 