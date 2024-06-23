import '0-util.dart';

void main() async {
  int userCount = await fetchAndPrintUsersCount();
}

Future<int> fetchUsersCount() async {
  // Simulate fetching user count from an API
  await Future.delayed(Duration(seconds: 1));
  return 10; // Replace with actual API call
}

Future<void> fetchAndPrintUsersCount() async {
  int userCount = await fetchUsersCount();
  print('Total users: $userCount');
}
