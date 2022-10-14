import 'package:flutter/material.dart';
import 'package:flutterbasi/flutter_data_table/datatable_method.dart';

class LearnDataTable extends StatelessWidget {
  const LearnDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListView(
          children: [DataTableMethod().createDataTable()],
        ),
      ),
    );
  }
}
