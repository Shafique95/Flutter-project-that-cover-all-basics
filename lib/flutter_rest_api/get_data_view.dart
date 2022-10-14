import 'package:flutter/material.dart';
import 'package:flutterbasi/flutter_rest_api/helper.dart';

import 'model.dart';

class GetDataView extends StatefulWidget {
  const GetDataView({Key? key}) : super(key: key);

  @override
  State<GetDataView> createState() => _GetDataViewState();
}

class _GetDataViewState extends State<GetDataView> {
  final TextEditingController _controller = TextEditingController();
  late Future<Album> _futureAlbum;
  late Future<Album> futureAlbum;
  Helper hl = Helper();

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
            FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
            // Post data to the server
            TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: 'Enter Title'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _futureAlbum = hl.createAlbum(_controller.text);
                });
              },
              child: const Text('Create Data'),
            ),
            //This code for show data
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
