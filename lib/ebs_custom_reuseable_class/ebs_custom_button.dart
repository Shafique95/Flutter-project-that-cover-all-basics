import 'package:flutter/material.dart';

class EbsCustomButton extends StatelessWidget {
  final Color buttonColor;
  final double buttonWidth;
  final double buttonHeight;
  final void Function()? onTap;
  final double borderRadius;
  final Widget buttonIcon;

  const EbsCustomButton({
    Key? key,
    required this.buttonColor,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.onTap,
    required this.borderRadius,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: buttonIcon),
    );
  }
}
