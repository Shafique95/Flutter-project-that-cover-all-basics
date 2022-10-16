import 'package:flutter/material.dart';

class BoxConstrainDemo extends StatelessWidget {
  const BoxConstrainDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shafiqul Islam'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Center(
        child: Container(
          color: Colors.green,
          padding: EdgeInsets.all(20), //Text
          /** BoxConstraints Widget **/
          constraints: const BoxConstraints(
              minHeight: 150, minWidth: 150, maxHeight: 280, maxWidth: 280),
          child: const Text(
            'GfG',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ), //BoxConstraints
        ), //container
      ), //Center
    ); //Scaffold
  }
}
