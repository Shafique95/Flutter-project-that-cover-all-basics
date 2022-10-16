import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllTextField extends GetxController {
  late List dynamicTextFieldList;
  // final tecList = [].obs;
  late final tecList;
  var sumTextFieldValue = 0.obs;
  late final tec;
  var _validate = false.obs;
  // for Calculateing sum
  void calculateSum() {
    for (int i = 0; i < tecList.length; i++) {
      print("Controller val ${tecList[i].text}");
      if (tecList[i].text == "") {
        tecList[i].text = "0";
      } else {
        sumTextFieldValue += int.parse(tecList[i].text);
      }

      print(" totalsum ${sumTextFieldValue}");
    }
    // for (int i = 0; i < tecList.length; i++) {
    //   tecList[i].clear();
    // }
    // clearField();
  }

  void clearField() {
    sumTextFieldValue.value = 0;
    //tec.clear();
    dynamicTextFieldList.clear();
    print("from controller");
  }

  Widget autoGenerateTextField(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          errorText: _validate.value ? 'Value Can\'t Be Empty' : null,
          border: OutlineInputBorder(),
        ),
        onChanged: (String value) {
          // print("Testing value" + tecList[0].text);
        },
      ),
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    tec = TextEditingController().obs;
    dynamicTextFieldList = [].obs;
    tecList = [].obs;
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    tec.dispose();
    for (int i = 0; i < tecList.length; i++) {
      tecList[i].dispose();
    }
    // TODO: implement onClose
    super.onClose();
  }

  void validateField() {
    for (int i = 0; i < tecList.length; i++) {
      tecList[i].text.isEmpty
          ? _validate.value = true
          : _validate.value = false;
    }
  }
}
