import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {Key? key,
      required this.onChange,
      required this.radioButtonContainerWidth,
      required this.radioButtonContainerHeight,
      required this.radioButtonContainerBorderWidth,
      required this.rdaioButtonContainerColor,
      required this.radioButtonValue,
      required this.radioButtonGroupValue,
      required this.radioButtonLebelText,
      required this.fontSize,
      required this.radioButtonLebelTextLabelColor})
      : super(key: key);

  final Function(Object?) onChange;
  final double radioButtonContainerWidth;
  final double radioButtonContainerHeight;
  final double radioButtonContainerBorderWidth;
  final Color rdaioButtonContainerColor;
  final Object radioButtonValue;
  final Object radioButtonGroupValue;
  final String radioButtonLebelText;
  final double fontSize;
  final Color radioButtonLebelTextLabelColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: radioButtonContainerWidth,
          height: radioButtonContainerHeight,
          decoration: BoxDecoration(
            border: Border.all(
                width: radioButtonContainerBorderWidth,
                color: rdaioButtonContainerColor),
          ),
          child: Row(
            children: [
              Radio(
                  value: radioButtonValue,
                  groupValue: radioButtonGroupValue,
                  onChanged: onChange),
              SizedBox(
                width: 20,
              ),
              Text(
                radioButtonLebelText,
                style: TextStyle(
                    fontSize: fontSize, color: radioButtonLebelTextLabelColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
