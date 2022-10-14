import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CheckOTP extends StatefulWidget {
  const CheckOTP({Key? key}) : super(key: key);

  @override
  State<CheckOTP> createState() => _CheckOTPState();
}

class _CheckOTPState extends State<CheckOTP> {
  String formattedDate = DateFormat('kk:mm:ss').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("ওটিপি যাচাই করণ"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Image.asset("asset/OTP.jpeg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // width: 250,
                // height: 250,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "আপনার মোবাইলে 8 ডিজিটের কোড"
                        "\nপাঠানো হয়েছে  কোড প্রদান করুন",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 150,
                        child: TextField(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "01934776188",
                            hintStyle: TextStyle(),
                            suffixIcon: IconButton(
                              onPressed: null,
                              //icon: Icon(Icons.mode_edit),
                              icon: Image.asset(
                                "asset/edit.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 3),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        formattedDate,
                        style: TextStyle(fontSize: 20),
                      ),
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
