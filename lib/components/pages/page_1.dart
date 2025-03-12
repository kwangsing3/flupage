import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: DataTable(
          columns: [DataColumn(label: Expanded(child: Text("標題")))],
          rows: [
            DataRow(cells: [DataCell(Text('XX'))]),
            DataRow(cells: [DataCell(Text('YY'))]),
            DataRow(cells: [DataCell(Text('Zx'))]),
          ],
        ),
      ),
    );
  }
}
