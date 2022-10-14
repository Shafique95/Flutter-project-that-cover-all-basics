import 'package:flutter/material.dart';

class LearnDropDownButton extends StatefulWidget {
  const LearnDropDownButton({Key? key}) : super(key: key);

  @override
  State<LearnDropDownButton> createState() => _LearnDropDownButtonState();
}

class _LearnDropDownButtonState extends State<LearnDropDownButton> {
  var selectedVal = " Find a value";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            Text(
              selectedVal,
              style: const TextStyle(fontSize: 40),
            ),
            DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: "Easy",
                  child: Text("Easy"),
                ),
                DropdownMenuItem(
                  value: "Easy Explanation",
                  child: Text("Easy Explanation"),
                )
              ],
              onChanged: (val) {
                setState(() {
                  selectedVal = val!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
