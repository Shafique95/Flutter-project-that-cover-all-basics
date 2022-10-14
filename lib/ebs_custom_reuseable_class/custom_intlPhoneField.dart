import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class CustomIntlPhoneField extends StatelessWidget {
  final String intlPhoneFieldLevel;
  final String intlPhoneFieldInitialText;
  final void Function(PhoneNumber)? onChanged;

  CustomIntlPhoneField(
      {Key? key,
      required this.intlPhoneFieldLevel,
      required this.intlPhoneFieldInitialText,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: IntlPhoneField(
          decoration: InputDecoration(
            //decoration for Input Field
            labelText: intlPhoneFieldLevel,
            border: const OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode:
              intlPhoneFieldInitialText, //default contry code, NP for Nepal
          onChanged: onChanged),
    );
  }
}
