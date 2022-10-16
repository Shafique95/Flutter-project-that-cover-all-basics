import 'package:flutter/material.dart';

class MakingStreamAndImplementByStreamBuilder extends StatefulWidget {
  const MakingStreamAndImplementByStreamBuilder({Key? key}) : super(key: key);

  @override
  State<MakingStreamAndImplementByStreamBuilder> createState() =>
      _MakingStreamAndImplementByStreamBuilderState();
}

class _MakingStreamAndImplementByStreamBuilderState
    extends State<MakingStreamAndImplementByStreamBuilder> {
  /// this Future method return only one value
  /// This is a future method
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
          stream: getnumbers(),
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
