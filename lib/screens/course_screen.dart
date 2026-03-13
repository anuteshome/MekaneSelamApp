import 'package:flutter/material.dart';
import 'pdf_screen.dart';

class CourseScreen extends StatelessWidget {
  final String grade;

  CourseScreen({required this.grade});

  final List courses = [
    {"name": "Mathematics", "pdf": "assets/pdfs/math.pdf"},
    {"name": "Physics", "pdf": "assets/pdfs/metshaf.pdf"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(grade)),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(courses[index]["name"]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PdfScreen(path: courses[index]["pdf"]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}