import 'package:flutter/material.dart';
import 'chapter_screen.dart';

class CourseScreen extends StatelessWidget {
  final String grade;

  CourseScreen({required this.grade});

  final Map<String, List<Map<String, dynamic>>> coursesByYear = {
    "ቀዳማይ 1": [
      {
        "name": "ቅዱሳት መጻሕፍት",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/kedusat1.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/kedusat2.pdf"},
        ]
      },
      {
        "name": "Networking",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/network1.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/network2.pdf"},
        ]
      },
    ],

    "ቀዳማይ 2": [
      {
        "name": "ግዕዝ",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/Geez7.pdf"}
        ]
      },
      {
        "name": "ስርዓተ ቤተ-ክርስቲያን",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/Sereatbatkeresetiyan7.pdf"}
        ]
      },
      {
        "name": "የቤተ-ክርስቲያን ታሪክ",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft71.pdf"}
        ]
      },
      {
        "name": "ክርስቲያናዊ ስነ-ምግባር",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/Kerstanyawisenmegbar7.pdf"}
        ]
      },
      {
        "name": "ቅዱሳት መጽሐፍት",
        "chapters": [
          {"title": "Chapter 1", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft71.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-13-34.pdf"}
        ]
      },
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
            title: Text(
              course["name"],
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChapterScreen(
                    courseName: course["name"],
                    chapters: course["chapters"],
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