import 'package:flutter/material.dart';

class ColumnLeanring extends StatelessWidget {
  List<String> _countryArea = [
    "Banglades",
    "India",
    "Banglades",
    "India",
    "Banglades",
    "India",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _countryArea.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "asset/Icon.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Text(_countryArea[index]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Business Automation"),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
