import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  double containerWidth;
  double containerHeight;
  final Widget containerChild;
  CustomContainer(
      {Key? key,
      required this.color,
      required this.containerWidth,
      required this.containerHeight,
      required this.containerChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      color: color,
      child: containerChild,
    );
  }
}
