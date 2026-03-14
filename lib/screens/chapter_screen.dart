import 'package:flutter/material.dart';
import 'pdf_screen.dart';

class ChapterScreen extends StatelessWidget {

  final String courseName;
  final List chapters;

  ChapterScreen({required this.courseName, required this.chapters});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(courseName)),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {

          final chapter = chapters[index];

          return ListTile(
            title: Text(
              chapter["title"],
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PdfScreen(
                    path: chapter["pdf"],
                    title: chapter["title"],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}