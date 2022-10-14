import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ValidateForm extends StatefulWidget {
  const ValidateForm({Key? key}) : super(key: key);

  @override
  State<ValidateForm> createState() => _ValidateFormState();
}

class _ValidateFormState extends State<ValidateForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var _key = GlobalKey<FormState>();
  submit() {
    var isValidate = _key.currentState!.validate();
    if (isValidate) {
      print(" Form Submitted");
    } else {
      return;
    }
  }

  // Email Validate
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (val) {
                      if (val == "") {
                        return " Enter your name";
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter your name",
                        border: OutlineInputBorder()),
                    controller: _controller,
                    onChanged: (text) {
                      _controller.value = TextEditingValue(
                        text: text.toUpperCase(),
                        selection: _controller.selection,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    obscureText: true,
                    validator: (val) {
                      if (val == "") {
                        return "Password Can not be empty ";
                      } else if (val!.length < 6) {
                        return " Password must be avobe 8 charecter";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Your Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (val) {
                      if (val!.length < 11) {
                        return "must enter valid Phone number";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Your Phone number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (val) {
                      bool emailValid = RegExp(
                              r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                          .hasMatch(val!);
                      if (emailValid != true) {
                        return "Email envalid";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter Your Email",
                        border: OutlineInputBorder()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      submit();
                    },
                    child: Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
