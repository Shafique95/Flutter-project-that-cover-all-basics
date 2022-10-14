import 'dart:convert';
import 'package:flutterbasi/flutter_rest_api/model.dart';
import 'package:http/http.dart' as http;

class Helper {
  // This method for get data  data
  Future<Album> fetchData() async {
    String url = "https://jsonplaceholder.typicode.com/albums/1";
    final respons =
        await http.get(Uri.parse(url)); // get the value and store it response
    // makin condition for Correctness
    if (respons.statusCode == 200) {
      return Album.fromJson(jsonDecode(respons.body));
    } else {
      throw Exception("Data Load Fail");
    }
  }

  // this method for post data
  Future<Album> createAlbum(String title) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );

    if (response.statusCode == 201) {
      print(response.statusCode);
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}
