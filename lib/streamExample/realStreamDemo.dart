import 'package:flutter/material.dart';

class RealStreamDemo extends StatefulWidget {
  const RealStreamDemo({Key? key}) : super(key: key);

  @override
  State<RealStreamDemo> createState() => _RealStreamDemoState();
}

class _RealStreamDemoState extends State<RealStreamDemo> {
  /// this Future method return only one value
  /// This is a future method
  late Stream<int> numberStream;
  @override
  void initState() {
    super.initState();
    numberStream = getnumbers();
  }

  Future<int> getnumber() async {
    await Future.delayed(
      const Duration(seconds: 10),
    );
    return 1;
  }

  /// Making Stream method as like as Future method
  Stream<int> getnumbers() async* {
    /// if we use async* we can not use return keyword
    ///  we have to use yeild keyword as like as return
    await Future.delayed(
      Duration(seconds: 4),
    );
    await Future.delayed(
      Duration(seconds: 4),
    );
    yield 1;
    await Future.delayed(
      Duration(seconds: 1),
    );
    yield 2;
    await Future.delayed(
      Duration(seconds: 1),
    );
    yield 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Builder Details"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: numberStream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("🧭 Waiting");
            } else if (snapshot.hasData) {
              int numberVal = snapshot.data;
              return Text(
                "🧒${numberVal}",
                style: TextStyle(fontSize: 30),
              );
            } else {
              return Text("no Data");
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
