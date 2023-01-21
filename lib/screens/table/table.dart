import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: DataTable(
                // sortColumnIndex: 2
                sortAscending: true,
                dataRowHeight: 60,
                headingRowHeight: 100,
                // headingRowColor: Color(0xff00f545),
                columnSpacing: 100,
                showCheckboxColumn: true,
                // col
                dataTextStyle: TextStyle(color: Colors.red),
                headingTextStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(16)),
                columns: [
                  DataColumn(label: Text("ID")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Age")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Sebootty")),
                    DataCell(Text("24")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2")),
                    DataCell(Text("zebronics")),
                    DataCell(Text("32")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("3")),
                    DataCell(Text("zebootti")),
                    DataCell(Text("42")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("4")),
                    DataCell(Text("king bob")),
                    DataCell(Text("29")),
                  ])
                ],
              ),
            )
          ],
        ))));
  }
}
