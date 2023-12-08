import 'package:pdf/widgets.dart' as pw;

import 'package:flutter/material.dart';

class TableTile extends StatelessWidget {
  const TableTile({super.key});

  static pw.TableRow tile(
          dynamic style,
          int number,
          String name,
          double count,
          String unit,
          String material,
          double priceForOne,
          double price) =>
      pw.TableRow(children: [
        pw.Container(width: 10, child: pw.Text('$number')),
        pw.Container(width: 100, child: pw.Text(name, style: style)),
  pw.Container(width: 20, child: pw.Text('$count')),
  pw.Container(width: 10, child: pw.Text(unit, style: style)),
  pw.Container(width: 100, child: pw.Text(material, style: style)),
  pw.Container(width: 20, child: pw.Text('$priceForOne')),
  pw.Container(width: 30, child: pw.Text('$price'))
      ]);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
