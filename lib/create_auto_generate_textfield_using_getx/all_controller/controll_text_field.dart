import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllTextField extends GetxController {
  late List dynamicTextFieldList = [].obs;
  final tecList = [].obs;
  var sumTextFieldValue = 0.obs;
  late final tec = TextEditingController().obs;
  // for Calculateing sum
  void calculateSum() {
    for (int i = 0; i < tecList.length; i++) {
      print("Controller val ${tecList[i].text}");
      sumTextFieldValue += int.parse(tecList[i].text);
      print(" totalsum ${sumTextFieldValue}");
    }
  }

  void clearField() {
    sumTextFieldValue.value = 0;
    print("from controller");
  }

  Widget autoGenerateTextField(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (String value) {
          // print("Testing value" + tecList[0].text);
        },
      ),
    );
  }
}
