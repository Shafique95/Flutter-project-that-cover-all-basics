import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  const StreamDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    StreamController<int> streamController = StreamController();
    return Scaffold(
      body: Center(

          /// Future is like Promise in JS or Task in c#.
          ///They are the representation of an asynchronous request.
          ///Futures have one and only one response.
          ///A common usage of Future is to handle HTTP calls.
          ///What you can listen to on a Future is its state.
          /// Whether it's done, finished with success, or had an error.
          ///But that's it.
          /// Stream on the other hand is like async Iterator in JS.
          /// This can be assimilated to a value that can change over time.
          /// It usually is the representation of web-sockets or events (such as clicks).
          /// By listening to a Stream you'll get each new value and also if the Stream had an error or completed.
          ///A Future can't listen to a variable change.
          /// It's a one-time response. Instead, you'll need to use a Stream.
          /// Stream is used on realtime application
          ///  if we fetch value using Future and show on UI but if we change backed UI will not change
          ///  But Useing StreamBuilder We can Change Variable value and others value
          child: StreamBuilder(
        stream: streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text("${counter}");
          } else {
            return Text("0");
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            streamController.sink.add(counter);
          },
          child: Text("Increase Value")),
    );
  }
}
