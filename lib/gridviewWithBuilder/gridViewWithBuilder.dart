import 'package:flutter/material.dart';

class GridViewWithBuilder extends StatefulWidget {
  const GridViewWithBuilder({Key? key}) : super(key: key);

  @override
  State<GridViewWithBuilder> createState() => _GridViewWithBuilderState();
}

class _GridViewWithBuilderState extends State<GridViewWithBuilder> {
  List<int> _item = [];
  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i <= 50; i++) {
      _item.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: _item.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.center,
                child: Text("${_item[index]}"),
                color: Colors.green,
              ),
            );
          }),
    );
  }
}
