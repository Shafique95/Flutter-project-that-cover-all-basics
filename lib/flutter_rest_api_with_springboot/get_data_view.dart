import 'package:flutter/material.dart';
import 'helperSpringboot.dart';
import 'model.dart';

class GetDataView2 extends StatefulWidget {
  const GetDataView2({Key? key}) : super(key: key);

  @override
  State<GetDataView2> createState() => _GetDataView2State();
}

class _GetDataView2State extends State<GetDataView2> {
  final TextEditingController _controller = TextEditingController();
  late Future<Employee> _futureAlbum;
  late Future<Employee> futureAlbum;
  HelperSprinBoot hl = HelperSprinBoot();

  @override
  void initState() {
    super.initState();
    futureAlbum = hl.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Show the getting data in ui
            FutureBuilder<Employee>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.firstName.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),

            // Post data to the server
            // TextField(
            //   controller: _controller,
            //   decoration: const InputDecoration(hintText: 'Enter Title'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       _futureAlbum = hl.createAlbum(_controller.text);
            //     });
            //   },
            //   child: const Text('Create Data'),
            // ),

            // This code for show data
            // FutureBuilder<Album>(
            //   future: _futureAlbum,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       return Text(snapshot.data!.title.toString());
            //     } else if (snapshot.hasError) {
            //       return Text('${snapshot.error}');
            //     }
            //
            //     return const CircularProgressIndicator();
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
