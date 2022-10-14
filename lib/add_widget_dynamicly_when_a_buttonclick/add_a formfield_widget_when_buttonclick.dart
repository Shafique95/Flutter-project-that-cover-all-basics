import 'dart:convert';

import 'package:flutter/material.dart';

import '../ebs_custom_reuseable_class/custom_intlPhoneField.dart';
import '../ebs_custom_reuseable_class/custom_search_dropdown.dart';
import '../ebs_custom_reuseable_class/custom_textfield_best_Example.dart';
import '../ebs_custom_reuseable_class/ebs_custom_button.dart';

class AddWidgetDynamicly2 extends StatefulWidget {
  const AddWidgetDynamicly2({Key? key}) : super(key: key);

  @override
  State<AddWidgetDynamicly2> createState() => _AddWidgetDynamicly2State();
}

class _AddWidgetDynamicly2State extends State<AddWidgetDynamicly2> {
  List<Widget> _phoneFieldList = [];
  List<Widget> _emailFieldList = [];
  List<Widget> _socialFieldList = [];
  int indexOfEmailField = 0;
  late List<Map<String, dynamic>> _values;
  late String _rsuslt;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _values = [];
    _rsuslt = "";
  }

// All Void Add function
  void _addCardWidget() {
    setState(() {
      _phoneFieldList.add(_phoneField());
    });
  }

  void _addemailWidget() {
    setState(() {
      _emailFieldList.add(_emailField(indexOfEmailField));
    });
  }

  void _addSocialWidget() {
    setState(() {
      _socialFieldList.add(_socialField());
    });
  }

// All void Remove Function
  void _removeCardWidget() {
    setState(() {
      _phoneFieldList.removeLast();
    });
  }

  void _removeEmailWidget() {
    setState(() {
      _emailFieldList.removeLast();
    });
  }

  void _removeSocialWidget() {
    setState(() {
      _socialFieldList.removeLast();
    });
  }

// All Widget function to create Dynamic textField
  Widget _phoneField() {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Contact No ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 225,
                  height: 90,
                  child: CustomIntlPhoneField(
                    intlPhoneFieldLevel: 'Phone number',
                    intlPhoneFieldInitialText: 'BD',
                    onChanged: (phone) {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 80,
                  child: CustomSearchDropDown(
                    onSelected: (String value) {},
                    searchBox: true,
                    searchAbleDropdownSelectItem: 'Home',
                  ),
                ),
                // Button Code
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 80,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: EbsCustomButton(
                      buttonColor: Colors.white,
                      buttonWidth: 30,
                      buttonHeight: 30,
                      onTap: () {
                        _removeCardWidget();
                        print("ok");
                      },
                      borderRadius: 100,
                      buttonIcon: const Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailField(int key) {
    return Container(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email Address",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 225,
                  height: 90,
                  child: CustomTextField(
                    hintText: 'Enter Email Address',
                    initialValue: '',
                    onChanged: (val) {
                      _onUpdate(key, val);
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 80,
                  child: CustomSearchDropDown(
                    onSelected: (String val) {
                      _onUpdate(key, val);
                    },
                    searchBox: true,
                    searchAbleDropdownSelectItem: 'primary',
                  ),
                ),
                // Button Code
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 80,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: EbsCustomButton(
                      buttonColor: Colors.white,
                      buttonWidth: 30,
                      buttonHeight: 30,
                      onTap: () {
                        _removeEmailWidget();
                        print("ok");
                      },
                      borderRadius: 100,
                      buttonIcon: const Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // This Function For getting the value from the Dynamic Text Field
  _onUpdate(int key, String val) async {
    Map<String, dynamic> json = {"id": key, "value": val};
    _values.add(json);
    _rsuslt = _pretyPrint(_values);
  }

  String _pretyPrint(jsonObject) {
    var encoder = JsonEncoder.withIndent("  ");
    return encoder.convert(jsonObject);
  }

  Widget _socialField() {
    return Container(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Social Link",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 225,
                  height: 90,
                  child: CustomTextField(
                    hintText: 'Enter Social Link',
                    initialValue: '',
                    onChanged: (String) {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 80,
                  child: CustomSearchDropDown(
                    onSelected: (String value) {},
                    searchBox: true,
                    searchAbleDropdownSelectItem: 'Facebook',
                  ),
                ),
                // Button Code
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 80,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: EbsCustomButton(
                      buttonColor: Colors.white,
                      buttonWidth: 30,
                      buttonHeight: 30,
                      onTap: () {
                        _removeSocialWidget();
                        print("ok");
                      },
                      borderRadius: 100,
                      buttonIcon: const Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                border: Border.all(color: const Color(0xFF008000), width: 2.0)),
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Heading And Icon
                    Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      color: const Color(0xFF008000),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.person_add_alt_1_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Contact Info",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Form Field
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Full Name\*",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    CustomTextField(
                      hintText: 'Full Name',
                      initialValue: '',
                      onChanged: (String) {},
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contact No ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: 225,
                            height: 90,
                            child: CustomIntlPhoneField(
                              intlPhoneFieldLevel: 'Phone number',
                              intlPhoneFieldInitialText: 'BD',
                              onChanged: (phone) {},
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 80,
                            child: CustomSearchDropDown(
                              onSelected: (String value) {},
                              searchBox: true,
                              searchAbleDropdownSelectItem: 'Home',
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 80,
                            child: IconButton(
                              onPressed: () {
                                _addCardWidget();
                              },
                              icon: const Icon(
                                Icons.add_circle_sharp,
                                color: Colors.green,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _phoneFieldList.length,
                      itemBuilder: (context, index) {
                        return _phoneFieldList[index];
                      },
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: 225,
                            height: 90,
                            child: CustomTextField(
                              hintText: 'Enter Email Address',
                              initialValue: '',
                              onChanged: (String) {},
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 80,
                            child: CustomSearchDropDown(
                              onSelected: (String value) {},
                              searchBox: true,
                              searchAbleDropdownSelectItem: 'primary',
                            ),
                          ),
                          // Button Code
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 80,
                            child: IconButton(
                              onPressed: () {
                                _addemailWidget();
                              },
                              icon: const Icon(
                                Icons.add_circle_sharp,
                                color: Colors.green,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _emailFieldList.length,
                      itemBuilder: (context, index) {
                        setState(() {
                          indexOfEmailField = index;
                        });
                        return _emailFieldList[index];
                      },
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Social Link",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: 225,
                            height: 90,
                            child: CustomTextField(
                              hintText: 'Enter Email Address',
                              initialValue: '',
                              onChanged: (String) {},
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 80,
                            child: CustomSearchDropDown(
                              onSelected: (String value) {},
                              searchBox: true,
                              searchAbleDropdownSelectItem: 'Facebook',
                            ),
                          ),
                          // Button Code
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 80,
                            child: IconButton(
                              onPressed: () {
                                _addSocialWidget();
                              },
                              icon: const Icon(
                                Icons.add_circle_sharp,
                                color: Colors.green,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _socialFieldList.length,
                      itemBuilder: (context, index) {
                        return _socialFieldList[index];
                      },
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text("Next"),
                      ),
                    ),
                    Text(_rsuslt)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
