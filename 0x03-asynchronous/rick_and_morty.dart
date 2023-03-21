import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (err) {
    print('Error caught: $err');
  }
}
