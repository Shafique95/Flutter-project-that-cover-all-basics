import 'package:flutter/material.dart';

class FractionalSizeBoxDemo extends StatefulWidget {
  const FractionalSizeBoxDemo({Key? key}) : super(key: key);

  @override
  State<FractionalSizeBoxDemo> createState() => _FractionalSizeBoxDemoState();
}

class _FractionalSizeBoxDemoState extends State<FractionalSizeBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 50,
      height: 50,

      ///A widget that sizes its child to a fraction of the total available space.
      child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        alignment: FractionalOffset.center,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}
