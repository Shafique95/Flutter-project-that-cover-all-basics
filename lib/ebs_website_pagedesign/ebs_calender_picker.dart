import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EbsDatePicker extends StatefulWidget {
  const EbsDatePicker({Key? key}) : super(key: key);

  @override
  State<EbsDatePicker> createState() => _EbsDatePickerState();
}

class _EbsDatePickerState extends State<EbsDatePicker> {
  String title = "Date Picker";
  TextEditingController _controller = TextEditingController();
  DateTime _date = DateTime.now();
  Future _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
        fieldHintText: 'dd/mm/yyyy',
        locale: const Locale('en', 'IN'),
        context: context,
        initialDate: _date,
        firstDate: DateTime(1947),
        lastDate: DateTime(2030),
        initialEntryMode: DatePickerEntryMode.calendarOnly);

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_double_arrow_left,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(),
                      child: TextField(
                        onTap: () {
                          _controller.text = _date.toString();
                          _selectDate(context);
                          print(_date.toString());
                        },
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: _date.toString().substring(0, 10),
                            hintStyle: TextStyle()),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: IconButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate:
                                DateTime.now().subtract(Duration(days: 1)),
                            lastDate: DateTime(2100),
                          );
                        },
                        icon: const Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
