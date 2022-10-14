import 'package:flutter/material.dart';
import 'package:flutterbasi/custom_button/customButton.dart';

class ListViewLearning extends StatelessWidget {
  List<String> _countryArea = [
    "Banglades",
    "India",
    "Banglades",
    "India",
    "Banglades",
    "India",
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Scaffold(
        body: ListView(
          children: [
            const ListTile(
              title: Text("This is ListView1"),
              subtitle: Text("this is the subtitle of ListView"),
              trailing: Icon(Icons.add),
              leading: Icon(Icons.add_call),
            ),
            const ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("This is the ListView2"),
              subtitle: Text("This is the subtitle of list view 2"),
              trailing: Icon(Icons.add),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("I am  CircleAveter"),
              ),
              title: Text("we are Organize"),
              subtitle: Text("This is so Important"),
              trailing: Icon(Icons.add_a_photo),
            ),
            AppButtons(
              textColor: Colors.white,
              backgroundColor: Colors.black87,
              borderColor: Colors.black87,
              text: "1",
              ButtonWidth: 100,
              ButtonHeight: 40,
            )
          ],
        ),
      ),
    );
  }
}
