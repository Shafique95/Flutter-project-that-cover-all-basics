import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterbasi/custom_widget/custom_dropdown.dart';
import '../ebs_custom_reuseable_class/custom_intlPhoneField.dart';
import '../ebs_custom_reuseable_class/ebs_custom_button.dart';
import '../custom_text_field/custom_text_field_with_method.dart';
import '../ebs_custom_reuseable_class/custom_textfield_best_Example.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class TestCustomWidget extends StatelessWidget {
  const TestCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomTextFieldLearning()
                .customTextField(TextInputType.visiblePassword),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldLearning().customTextField(TextInputType.text),
            const Text(" This TextField design using class "),
            CustomTextField(
              hintText: 'name',
              initialValue: '',
              onChanged: (String) {},
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r"[a-zA-Z]+|\s"),
                )
              ],
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Enter a valid String';
                }
              },
            ),
            CustomTextField(
              hintText: 'age',
              initialValue: '',
              onChanged: (String) {},
            ),
            CustomTextField(
              hintText: 'Salary',
              initialValue: '',
              onChanged: (String) {},
            ),
            const LearnDropDownButton(),
            EbsCustomButton(
                buttonColor: Colors.green,
                buttonWidth: 30,
                buttonHeight: 30,
                onTap: () {},
                borderRadius: 100,
                buttonIcon: const Icon(
                  Icons.add,
                  color: Colors.white,
                )),
            CustomIntlPhoneField(
              intlPhoneFieldLevel: 'Phone number',
              intlPhoneFieldInitialText: 'BD',
              onChanged: (phone) {},
            )
          ],
        ),
      ),
    );
  }
}
