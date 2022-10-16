import 'package:flutter/material.dart';

class ScalTransitioClassDemo extends StatefulWidget {
  const ScalTransitioClassDemo({Key? key}) : super(key: key);

  @override
  State<ScalTransitioClassDemo> createState() => _ScalTransitioClassDemoState();
}

class _ScalTransitioClassDemoState extends State<ScalTransitioClassDemo>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceInOut,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
