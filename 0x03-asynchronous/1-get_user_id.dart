import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String jsonData = await fetchUserData();
  Map<String, dynamic> userData = json.decode(jsonData);
  String id = userData['id'];
  return id;
}