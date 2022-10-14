import 'package:flutter/material.dart';

class FlutterTable extends StatelessWidget {
  const FlutterTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Table(
            border: TableBorder.all(),
            children: const [
              TableRow(children: [
                TableCell(
                  child: Text('name'),
                ),
                TableCell(
                  child: Text('age'),
                ),
                TableCell(
                  child: Text('country'),
                ),
                TableCell(
                  child: Text('salary'),
                ),
              ]),
              // Table Data
              TableRow(children: [
                TableCell(
                  child: Text('Shafiqul Islam'),
                ),
                TableCell(
                  child: Text('27'),
                ),
                TableCell(
                  child: Text('Bangladesh'),
                ),
                TableCell(
                  child: Text('25000'),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Text('Shafiqul Islam'),
                ),
                TableCell(
                  child: Text('27'),
                ),
                TableCell(
                  child: Text('Bangladesh'),
                ),
                TableCell(
                  child: Text('25000'),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Text('Shafiqul Islam'),
                ),
                TableCell(
                  child: Text('27'),
                ),
                TableCell(
                  child: Text('Bangladesh'),
                ),
                TableCell(
                  child: Text('25000'),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Text('Shafiqul Islam'),
                ),
                TableCell(
                  child: Text('27'),
                ),
                TableCell(
                  child: Text('Bangladesh'),
                ),
                TableCell(
                  child: Text('25000'),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Text('Shafiqul Islam'),
                ),
                TableCell(
                  child: Text('27'),
                ),
                TableCell(
                  child: Text('Bangladesh'),
                ),
                TableCell(
                  child: Text('25000'),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
