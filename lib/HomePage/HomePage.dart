import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  List<String> _name = [
    "Banglades",
    "India",
    "Banglades",
    "India",
    "Banglades",
    "India",
  ];
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: ListView.builder(
            itemCount: _name.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Image(
                    image: AssetImage("asset/Icon.png"),
                  ),
                ),
                title: Text("Country name"),
                subtitle: Text(_name[index]),
                trailing: Icon(Icons.minimize_outlined),
              );
            }),
      ),
    );
  }
}
