import '2-util.dart';

// prints the user’s string representation 
Future<void> getUser() async {
  try {
    String jsonData = await fetchUser();
    print('$jsonData');
  } catch (e) {
    print('error caught: $e');
  }
}