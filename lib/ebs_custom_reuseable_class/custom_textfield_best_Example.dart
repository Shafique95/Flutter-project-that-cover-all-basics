import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  // TextField Properties
  final String? initialValue;
  final Function(String) onChanged;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final String? Function(String?)? validator;
  // name parameter constructor for custom text field
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.initialValue,
      required this.onChanged,
      this.inputFormatters,
      this.validator,
      this.maxLength})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final _focusNode = FocusNode();
  final _borderStyle = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Color(0xfffafafa),
    ),
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: widget.initialValue,
        onChanged: widget.onChanged,
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatters,
        validator: widget.validator,
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.1),
          filled: true,
          enabledBorder: _borderStyle,
          focusedBorder: _borderStyle,
          hintText: widget.hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        ),
      ),
    );
  }
}
