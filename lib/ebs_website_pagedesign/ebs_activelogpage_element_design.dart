import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../ebs_custom_reuseable_class/custom_search_dropdown.dart';

class EbsActiveLogElementCreate extends StatefulWidget {
  const EbsActiveLogElementCreate({Key? key}) : super(key: key);

  @override
  State<EbsActiveLogElementCreate> createState() =>
      _EbsActiveLogElementCreateState();
}

class _EbsActiveLogElementCreateState extends State<EbsActiveLogElementCreate> {
  String strinVal = "";
  bool isSelected = false;

  void _controllChange(String? value) {
    setState(() {
      strinVal = "Non-Project";
      isSelected = true;
      print(isSelected);
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 3,
                      color: isSelected ? Colors.green : Colors.blueGrey),
                ),
                child: Row(
                  children: [
                    Radio(
                      value: "Non-Project",
                      groupValue: strinVal,
                      onChanged: _controllChange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Non-Project",
                      style: TextStyle(
                          fontSize: isSelected ? 25 : 15,
                          color: isSelected ? Colors.green : Colors.black87),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
