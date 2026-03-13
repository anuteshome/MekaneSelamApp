import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class PdfScreen extends StatefulWidget {
  final String path;
  final String title;

  const PdfScreen({super.key, required this.path, required this.title});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {

  String? localPath;

  Future<String> loadPdf() async {
    final bytes = await rootBundle.load(widget.path);
    final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/temp.pdf");

    await file.writeAsBytes(bytes.buffer.asUint8List());

    return file.path;
  }

  @override
  void initState() {
    super.initState();

    loadPdf().then((path) {
      setState(() {
        localPath = path;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  title: Text(widget.title),
),
      body: localPath == null
          ? const Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: localPath!,
            ),
    );
  }
}