import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> jsonData() async {
  final response = await http.get(Uri.parse('https://dummyjson.com/users'));
  // print(response.body);
  if (response.statusCode == 200) {
    return json.decode(response.body)['users'] as List<dynamic>;
  } else {
    throw Exception('Failed to load data');
  }
}
