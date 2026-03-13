import 'package:flutter/material.dart';
import 'pdf_screen.dart';

class CourseScreen extends StatelessWidget {
  final String grade;

  CourseScreen({required this.grade});

  final Map<String, List<Map<String, String>>> coursesByYear = {
    "ቀዳማይ 1": [
      {"name": "ቅዱሳት መጻሕፍት", "pdf": "assets/pdfs/kedusat.pdf"},
      {"name": "Networking", "pdf": "assets/pdfs/network.pdf"},
    ],
    
    "ቀዳማይ 2": [
      {"name": "ግዕዝ", "pdf": "assets/pdfs/Geez7.pdf"},
      {"name": "ስርዓተ ቤተ-ክርስቲያን", "pdf": "assets/pdfs/Sereatbatkeresetiyan7.pdf"},
       {"name": "የቤተ-ክርስቲያን ታሪክ", "pdf": "assets/pdfs/Ybytkeresetiyanetarike7.pdf"},
        {"name": "ክርስቲያናዊ ስነ-ምግባር", "pdf": "assets/pdfs/Kerstanyawisenmegbar7.pdf"},
         {"name": "ቅዱሳት መጽሐፍት", "pdf": "assets/pdfs/kedusatmetsahft7.pdf"},
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
            title: Text(course["name"]!,
           textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                    PdfScreen(
  path: course["pdf"]!,
  title: course["name"]!,
)
                ),
              );
            },
          );
        },
      ),
    );
  }
}