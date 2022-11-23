import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:typed_data';

import '../resume_templete.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffF39034),
                      Color(0xffFF2727),
                    ]),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                  onPressed: _createPdf, child: Text('Create and Print Pdf'),),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffF39034),
                        Color(0xffFF2727),
                      ]),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: _displayPdf, child: Text('Display Pdf'))),
            SizedBox(
              height: 5,
            ),

          ],
        ),
      ),
    );
  }

  void _createPdf() async {
    final doc = pw.Document();

    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context)

        {
          return pw.Column(
            children: [

            ],
          );
        },
      ),
    );


    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
    await Printing.sharePdf(
        bytes: await doc.save(), filename: 'my document pdf');



  }

  void _displayPdf() {
    final doc = pw.Document();

    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.SizedBox(
                width: double.infinity,
                child: pw.FittedBox(
                  child: pw.Text(
                    'title',
                  ),
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Flexible(child: pw.FlutterLogo())
            ],
          );
        },
      ),
    );

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResumeTemplete(),
        ));
  }
}


class PreviewScreen extends StatelessWidget {

  final pw.Document doc;

  const PreviewScreen({
    Key? key,
    required this.doc,
  }) : super (key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text("Preview"),
      ),
      body: PdfPreview(
        build: (format) => doc.save(),
        allowSharing: true,
        allowPrinting: true,
        initialPageFormat: PdfPageFormat.a4,
        pdfFileName: "mydoc.pdf",

      ),
    );
  }
}

