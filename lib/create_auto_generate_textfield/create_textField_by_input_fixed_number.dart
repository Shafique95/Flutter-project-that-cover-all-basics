import 'package:flutter/material.dart';

class CreateTextFieldByInputFixednumber extends StatefulWidget {
  const CreateTextFieldByInputFixednumber({Key? key}) : super(key: key);

  @override
  State<CreateTextFieldByInputFixednumber> createState() =>
      _CreateTextFieldByInputFixednumberState();
}

class _CreateTextFieldByInputFixednumberState
    extends State<CreateTextFieldByInputFixednumber> {
  late List dynamicTextFieldList;
  late TextEditingController tec;
  TextEditingController tecDynamic = TextEditingController();
  late List<TextEditingController> tecList;
  var sumTextFieldValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dynamicTextFieldList = [];
    tecList = [];
    tec = TextEditingController();
  }

  @override
  void dispose() {
    for (int i = 0; i <= tecList.length; i++) {
      tecList[i].dispose();
      print(" totalsum ${sumTextFieldValue}");
    }
    tec.dispose();
    super.dispose();
  }

  Widget _textField(TextEditingController controller) {
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

  totalOfDynamicTextFieldValu() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: tec,
                  onTap: () {},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  for (int i = 0; i < int.parse(tec.text); i++) {
                    // tecList = List.generate(
                    //   int.parse(tec.text),
                    //   (i) => TextEditingController(),
                    // );
                    setState(() {
                      tecList.add(TextEditingController());
                      dynamicTextFieldList.add(_textField(tecList[i]));
                    });

                    print("Ok");
                    print("tec${tec}");
                    print("length${dynamicTextFieldList.length}");
                  }
                  print("con: ${tecList}");
                },
                child: Text("Create TextField"),
              ),
              ElevatedButton(
                onPressed: () {
                  dynamicTextFieldList.clear();
                  setState(() {
                    sumTextFieldValue = 0;
                  });
                },
                child: Text("Clear all"),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dynamicTextFieldList.length,
                itemBuilder: (context, index) {
                  return dynamicTextFieldList[index];
                },
              ),
              ElevatedButton(
                onPressed: () {
                  print("pressing");
                  setState(() {
                    for (int i = 0; i < tecList.length; i++) {
                      print("Controller val ${tecList[i].text}");
                      sumTextFieldValue += int.parse(tecList[i].text);
                      print(" totalsum ${sumTextFieldValue}");
                    }
                  });
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
              Text(sumTextFieldValue.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
