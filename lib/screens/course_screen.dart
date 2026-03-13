import 'package:flutter/material.dart';
import 'pdf_screen.dart';

class CourseScreen extends StatelessWidget {
  final String grade;

  CourseScreen({required this.grade});

  final Map<String, List<Map<String, String>>> coursesByYear = {
    "Year 1": [
      {"name": "ሙከራ", "pdf": "assets/pdfs/math.pdf"},
      {"name": "የመጻሐፍ ቅዱስ ጥናት", "pdf": "assets/pdfs/metshaf.pdf"},
    ],

    "Year 2": [
      {"name": "ቅዱሳት መጻሕፍት", "pdf": "assets/pdfs/kedusat.pdf"},
      {"name": "Networking", "pdf": "assets/pdfs/network.pdf"},
    ],
  };

  @override
  Widget build(BuildContext context) {

    final courses = coursesByYear[grade] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(grade)),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {

          final course = courses[index];

          return ListTile(
            title: Text(course["name"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PdfScreen(path: course["pdf"]!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}