import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LearnSharedPrefernces extends StatelessWidget {
  LearnSharedPrefernces({Key? key}) : super(key: key);
  TextEditingController _teC = TextEditingController();
  // add a string value to Shared preferences
  addStringToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('TextValue', _teC.text);
    print("value added");
  }

  // Get String value from Shared preferences
  getStringValueSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? getValue = prefs.getString('TextValue');
    print("Get Value ${getValue}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Column(
              children: [
                TextField(
                  controller: _teC,
                  decoration: const InputDecoration(
                      hintText: "Enter a value", border: OutlineInputBorder()),
                ),
                ElevatedButton(
                  child: const Text('Save value to Shared Preferences'),
                  onPressed: () {
                    addStringToSF();
                    getStringValueSF();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
