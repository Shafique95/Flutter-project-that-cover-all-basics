import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GetRestValue extends StatelessWidget {
  const GetRestValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("GetRestAPi Value"),
          FloatingActionButton(
            onPressed: () async {
              var url = Uri.https(
                  'www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
              var response = await http.get(url);
              if (response.statusCode == 200) {
                var jsonResponse =
                    convert.jsonDecode(response.body) as Map<String, dynamic>;
                var itemCount = jsonResponse['totalItems'];
                print('Number of books about http: $itemCount.');
              } else {
                print('Request failed with status: ${response.statusCode}.');
              }
            },
            child: const Text("GetVal"),
          )
        ],
      ),
    );
  }
}
