import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'all_controller/controll_text_field.dart';

class CalculateSumOfAutogenerateTextFieldByGetX extends StatefulWidget {
  CalculateSumOfAutogenerateTextFieldByGetX({Key? key}) : super(key: key);

  @override
  State<CalculateSumOfAutogenerateTextFieldByGetX> createState() =>
      _CalculateSumOfAutogenerateTextFieldByGetXState();
}

class _CalculateSumOfAutogenerateTextFieldByGetXState
    extends State<CalculateSumOfAutogenerateTextFieldByGetX> {
  final ControllTextField sumController = Get.put(ControllTextField());
  //late List dynamicTextFieldList;
  // late TextEditingController tec;
  TextEditingController tecDynamic = TextEditingController();
  //late List<TextEditingController> tecList;
  // var sumTextFieldValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //dynamicTextFieldList = [];
    //tecList = [];
    //tec = TextEditingController();
  }

  @override
  void dispose() {
    // for (int i = 0; i <= tecList.length; i++) {
    //   tecList[i].dispose();
    //   print(" totalsum ${sumTextFieldValue}");
    // }
    // tec.dispose();
    super.dispose();
  }

  // Widget _textField(TextEditingController controller) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: TextField(
  //       controller: controller,
  //       decoration: InputDecoration(
  //         border: OutlineInputBorder(),
  //       ),
  //       onChanged: (String value) {
  //         // print("Testing value" + tecList[0].text);
  //       },
  //     ),
  //   );
  // }

  totalOfDynamicTextFieldValu() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: sumController.tec.value,
                    onTap: () {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                );
              }),

              ElevatedButton(
                onPressed: () {
                  for (int i = 0;
                      i < int.parse(sumController.tec.value.text);
                      i++) {
                    // tecList = List.generate(
                    //   int.parse(tec.text),
                    //   (i) => TextEditingController(),
                    // );
                    setState(() {
                      sumController.tecList.add(TextEditingController());
                      sumController.dynamicTextFieldList.add(sumController
                          .autoGenerateTextField(sumController.tecList[i]));
                    });

                    print("Ok");
                    print("tec${sumController.tec.value}");
                    print("length${sumController.dynamicTextFieldList.length}");
                  }
                  print("con: ${sumController.tecList}");
                },
                child: Text("Create TextField"),
              ),
              ElevatedButton(
                onPressed: () {
                  sumController.dynamicTextFieldList.clear();
                  setState(() {
                    sumController.clearField();
                  });
                },
                child: Text("Clear all"),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: sumController.dynamicTextFieldList.length,
                itemBuilder: (context, index) {
                  return sumController.dynamicTextFieldList[index];
                },
              ),
              ElevatedButton(
                onPressed: () {
                  sumController.calculateSum();
                  sumController.validateField();
                  print("pressing");
                },
                child: Text("Calculate total"),
              ),
              const Divider(
                thickness: 5, // thickness of the line
                indent: 20, // empty space to the leading edge of divider.
                endIndent:
                    20, // empty space to the trailing edge of the divider.
                color: Colors.black, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              Obx(
                () => Text(sumController.sumTextFieldValue.toString()),
              ),
              // Text(sumTextFieldValue.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
