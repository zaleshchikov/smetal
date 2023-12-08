import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'pdf_UI.dart';
import 'package:smeta/models/client.dart';
class PdfScreen extends StatelessWidget {
  OrderPDF pdf = OrderPDF();
  Client client;
  PdfScreen(this.client);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: theme.iconTheme,
          ),
      body: PdfPreview(
        build: (context) => pdf.createPdfFile(size, client),
      ),
    );
  }
}
