import 'package:flutter/material.dart';

class CrmContactPage extends StatelessWidget {
  const CrmContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                border: Border.all(color: const Color(0xFF13E00C), width: 2.0)),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: const Color(0xFF13E00C),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.dehaze_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Contact Info",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Checkbox(
                        value: true,
                        onChanged: null,
                      ),
                      Text(
                        "MyDesk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Card(
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text("Add Contact"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
