import 'package:flutter/material.dart';

class CustomTextFieldLearning {
  Widget customTextField(TextInputType textInputType) {
    RegExp pattern = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    TextEditingController _textEditingController = TextEditingController();

    if (textInputType == TextInputType.visiblePassword) {
      return TextField(
        controller: _textEditingController,
        decoration: const InputDecoration(hintText: 'Password'),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        onChanged: (String val) {},
      );
    } else {
      return TextField(
        controller: _textEditingController,
        decoration: const InputDecoration(hintText: 'Email'),
        keyboardType: TextInputType.emailAddress,
        // inputFormatters: [BlacklistingTextInputFormatter(pattern)],
      );
    }
  }
}
