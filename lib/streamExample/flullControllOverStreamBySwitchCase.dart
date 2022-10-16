import 'package:flutter/material.dart';

class FullControllOverStream extends StatefulWidget {
  const FullControllOverStream({Key? key}) : super(key: key);

  @override
  State<FullControllOverStream> createState() => _FullControllOverStreamState();
}

class _FullControllOverStreamState extends State<FullControllOverStream> {
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
          // stream:null,
          stream: numberStream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            switch (snapshot.connectionState) {

              /// when stream will be null
              case ConnectionState.none:
                return Text("Stream is null ");

              /// When Stream will stay in waiting position
              case ConnectionState.waiting:
                return const Text("🧭 Waiting");

              /// When stream will strat passing data from sink
              case ConnectionState.active:
                if (snapshot.hasData) {
                  int numberVal = snapshot.data;
                  return Text(
                    "🧒${numberVal}",
                    style: TextStyle(fontSize: 30),
                  );
                } else {
                  return Text("no Data");
                }

              /// When all data reach to stream from sink
              /// Do you know what is Sink and Stream
              case ConnectionState.done:
                if (snapshot.hasData) {
                  int numberVal = snapshot.data;
                  return Text(
                    "✅${numberVal}",
                    style: TextStyle(fontSize: 30),
                  );
                } else {
                  return Text("no data available");
                }

              /// if any condition don't work then default will work
              default:
                return Container();
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
