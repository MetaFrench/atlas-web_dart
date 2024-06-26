// using http to send requests to an online api
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {

  try {
    // ping the api
    var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    // parse the JSON response
    var jsonData = json.decode(response.body);

    // extract the list of characters from the JSON data
    List<dynamic> characters = jsonData['results'];

    // iterate over the list of characters and print their names
    for (var character in characters) {
      String name = character['name'];
      print('$name');
    }
  
  } catch (e) {
    print('error caught: $e');
  }
}