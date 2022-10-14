import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'ebs_custom_reuseable_class/custom_radio_button.dart';
import 'ebs_custom_reuseable_class/custom_radio_list_tile_button.dart';

class TestingPurpose extends StatefulWidget {
  const TestingPurpose({Key? key}) : super(key: key);

  @override
  State<TestingPurpose> createState() => _TestingPurposeState();
}

class _TestingPurposeState extends State<TestingPurpose> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
  String strinVal = "";
  bool isSelected = false;
  void _controllChange(Object? value) {
    setState(() {
      strinVal = "no";
      isSelected = true;
      print(isSelected);
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          for (int i = 0; i < 3; i++) Text("Hello" + i.toString()),
          PinCodeTextField(
            appContext: context,
            length: 4,
            obscureText: true,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white,
            ),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            // errorAnimationController: errorController,
            // controller: textEditingController,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {
                // currentText = value;
              });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          ),
          CustomRadioButton(
            onChange: _controllChange,
            radioButtonContainerWidth: 250,
            radioButtonContainerHeight: 50,
            radioButtonContainerBorderWidth: 3,
            rdaioButtonContainerColor: Colors.green,
            radioButtonValue: "Non-Project",
            radioButtonGroupValue: "Non-Project",
            radioButtonLebelText: 'Non-Project',
            fontSize: 25,
            radioButtonLebelTextLabelColor: Colors.red,
          ),
          LabeledRadio(
            label: 'no',
            padding: EdgeInsets.all(10.0),
            groupValue: strinVal,
            value: "no",
            onChanged: _controllChange,
          ),
        ],
      ),
    );
  }
}
