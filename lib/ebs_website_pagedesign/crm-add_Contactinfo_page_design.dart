import 'package:flutter/material.dart';

import '../ebs_custom_reuseable_class/custom_intlPhoneField.dart';
import '../ebs_custom_reuseable_class/custom_search_dropdown.dart';
import '../ebs_custom_reuseable_class/custom_textfield_best_Example.dart';
import '../ebs_custom_reuseable_class/ebs_custom_button.dart';

class AddInfoPageDesign extends StatefulWidget {
  const AddInfoPageDesign({Key? key}) : super(key: key);

  @override
  State<AddInfoPageDesign> createState() => _AddInfoPageDesignState();
}

class _AddInfoPageDesignState extends State<AddInfoPageDesign> {
  bool isVisible = false;
  bool emailField = false;
  bool socialField = false;
  int _numberOfTextField = 0;
  //
  // @override
  // void initState() {
  //   _showContainer = false;
  //
  //   super.initState();
  // }
  //
  // void show() {
  //   setState(() {
  //     _showContainer = !_showContainer;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                border: Border.all(color: const Color(0xFF008000), width: 2.0)),
            child: Column(
              children: [
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Contact Overview",
                      style: TextStyle(color: Color(0xFF3c8dbc), fontSize: 19),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full Name\*",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CustomTextField(
                          hintText: 'Full Name',
                          initialValue: '',
                          onChanged: (String) {},
                        ),
                        // Contact Info Part code
                        const Text(
                          "Contact No ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CustomIntlPhoneField(
                          intlPhoneFieldLevel: 'Phone number',
                          intlPhoneFieldInitialText: 'BD',
                          onChanged: (phone) {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomSearchDropDown(
                          onSelected: (String value) {},
                          searchBox: true,
                          searchAbleDropdownSelectItem: 'Home',
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: EbsCustomButton(
                            buttonColor: Colors.green,
                            buttonWidth: 30,
                            buttonHeight: 30,
                            onTap: () {
                              // show();
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            borderRadius: 100,
                            buttonIcon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Contact No ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              CustomIntlPhoneField(
                                intlPhoneFieldLevel: 'Phone number',
                                intlPhoneFieldInitialText: 'BD',
                                onChanged: (phone) {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomSearchDropDown(
                                onSelected: (String value) {},
                                searchBox: true,
                                searchAbleDropdownSelectItem: 'Home',
                              ),
                              // Button part
                              Align(
                                alignment: Alignment.centerRight,
                                child: EbsCustomButton(
                                  buttonColor: Colors.white,
                                  buttonWidth: 30,
                                  buttonHeight: 30,
                                  onTap: () {
                                    // show();
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  borderRadius: 100,
                                  buttonIcon: const Icon(
                                    Icons.remove_circle,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Email Address Part
                        const Text(
                          "Email Address",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CustomTextField(
                          hintText: 'Email Address',
                          initialValue: '',
                          onChanged: (String) {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomSearchDropDown(
                          onSelected: (String value) {},
                          searchBox: true,
                          searchAbleDropdownSelectItem: 'Primary',
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: EbsCustomButton(
                            buttonColor: Colors.green,
                            buttonWidth: 30,
                            buttonHeight: 30,
                            onTap: () {
                              // show();
                              setState(() {
                                emailField = !emailField;
                              });
                            },
                            borderRadius: 100,
                            buttonIcon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: emailField,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Email Address",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              CustomTextField(
                                hintText: 'Email Address',
                                initialValue: '',
                                onChanged: (String) {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomSearchDropDown(
                                onSelected: (String value) {},
                                searchBox: true,
                                searchAbleDropdownSelectItem: 'Primary',
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: EbsCustomButton(
                                  buttonColor: Colors.white,
                                  buttonWidth: 30,
                                  buttonHeight: 30,
                                  onTap: () {
                                    // show();
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  borderRadius: 100,
                                  buttonIcon: const Icon(
                                    Icons.remove_circle,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Social Link Park
                        const Text(
                          "Social Link",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CustomTextField(
                          hintText: 'Social Link',
                          initialValue: '',
                          onChanged: (String) {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomSearchDropDown(
                          onSelected: (String value) {},
                          searchBox: true,
                          searchAbleDropdownSelectItem: 'Facebook',
                        ),
                        //Button
                        Align(
                          alignment: Alignment.centerRight,
                          child: EbsCustomButton(
                            buttonColor: Colors.green,
                            buttonWidth: 30,
                            buttonHeight: 30,
                            onTap: () {
                              // show();
                              setState(() {
                                socialField = !socialField;
                              });
                            },
                            borderRadius: 100,
                            buttonIcon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: socialField,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Social Link",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              CustomTextField(
                                hintText: 'Enter Social Link ',
                                initialValue: '',
                                onChanged: (String) {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomSearchDropDown(
                                onSelected: (String value) {},
                                searchBox: true,
                                searchAbleDropdownSelectItem: 'Facebook',
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: EbsCustomButton(
                                  buttonColor: Colors.white,
                                  buttonWidth: 30,
                                  buttonHeight: 30,
                                  onTap: () {
                                    // show();
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  borderRadius: 100,
                                  buttonIcon: const Icon(
                                    Icons.remove_circle,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // This is for Visible
                        // Container(
                        //   width: MediaQuery.of(context).size.width,
                        //   height: MediaQuery.of(context).size.height,
                        //   child: Column(
                        //     children: [
                        //       for (int i = 0; i < _numberOfTextField; i++)
                        //         Visibility(
                        //           visible: _showContainer,
                        //           child: Column(
                        //             children: [
                        //               CustomIntlPhoneField(
                        //                 intlPhoneFieldLevel: 'Phone number',
                        //                 intlPhoneFieldInitialText: 'BD',
                        //                 onChanged: (phone) {},
                        //               ),
                        //               const SizedBox(
                        //                 width: 10,
                        //               ),
                        //               CustomSearchDropDown(
                        //                 onSelected: (String value) {},
                        //                 searchBox: true,
                        //                 searchAbleDropdownSelectItem: 'Home',
                        //               ),
                        //               // Custom Button
                        //               Align(
                        //                 alignment: Alignment.centerRight,
                        //                 child: EbsCustomButton(
                        //                   buttonColor: Colors.red,
                        //                   buttonWidth: 30,
                        //                   buttonHeight: 30,
                        //                   onTap: () {
                        //                     // show();
                        //                     setState(() {
                        //                       _numberOfTextField = 0;
                        //                       _showContainer = !_showContainer;
                        //                     });
                        //                     print("Ok");
                        //                   },
                        //                   borderRadius: 100,
                        //                   buttonIcon: const Center(
                        //                     child: Icon(
                        //                       Icons
                        //                           .do_not_disturb_on_total_silence_outlined,
                        //                       color: Colors.white,
                        //                       size: 30,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
