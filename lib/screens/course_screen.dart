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
          // {"title": "Chapter 1", "pdf": "assets/pdfs/Geez7.pdf"},
          // {"title": "Chapter 2", "pdf": "assets/pdfs/kedusat2.pdf"},
        ]
      },
      {
        "name": "Networking",
        "chapters": [
          // {"title": "Chapter 1", "pdf": "assets/pdfs/network1.pdf"},
          // {"title": "Chapter 2", "pdf": "assets/pdfs/network2.pdf"},
        ]
      },
    ],

    "ቀዳማይ 2": [
      {
        "name": "ግዕዝ",
        "chapters": [
         {"title": "Introduction", "pdf": "assets/pdfs/Geez7/Geez7-compressed-1-4.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Geez7/Geez7-compressed-5-42.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Geez7/Geez7-compressed-43-51.pdf"},
           {"title": "Chapter 3", "pdf": "assets/pdfs/Geez7/Geez7-compressed-52-79.pdf"},
          
        ]
      },
      {
        "name": "ስርዓተ ቤተ-ክርስቲያን",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-1-13.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-14-38.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-39-52.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-53-64.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-65-80.pdf"},
          {"title": "Chapter 5", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-81-102.pdf"},
          {"title": "Chapter 6", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-103-126.pdf"},
          {"title": "Chapter 7", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-126-134.pdf"},
          {"title": "Chapter 8", "pdf": "assets/pdfs/SerateBetekertyan7/Sereatbatkeresetiyan7-134-140.pdf"},
        ]
      },
      {
        "name": "የቤተ-ክርስቲያን ታሪክ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-1-14.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-15-19.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-21-34.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-35-40.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-41-56.pdf"},
              {"title": "Chapter 5", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-57-71.pdf"},
               {"title": "Chapter 6", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-73-87.pdf"},
                {"title": "Chapter 7", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-89-93.pdf"},
                 {"title": "Chapter 8", "pdf": "assets/pdfs/YebetekrstyanTarik7/Ybytkeresetiyanetarike7-95-102.pdf"},
        ]
      },
      {
        "name": "ክርስቲያናዊ ስነ-ምግባር",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/kerstyanawiSenemegbar7/Kerstanyawisenmegbar7-1-10.pdf"},
            {"title": "Chapter 1", "pdf": "assets/pdfs/kerstyanawiSenemegbar7/Kerstanyawisenmegbar7-11-14.pdf"},
              {"title": "Chapter 2", "pdf": "assets/pdfs/kerstyanawiSenemegbar7/Kerstanyawisenmegbar7-15-50.pdf"},
                {"title": "Chapter 3", "pdf": "assets/pdfs/kerstyanawiSenemegbar7/Kerstanyawisenmegbar7-51-64.pdf"}
        ]
      },
      {
        "name": "ቅዱሳት መጽሐፍት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft71.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-13-34.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-35-56.pdf"},
           {"title": "Chapter 3", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-57-69.pdf"},
            {"title": "Chapter 4", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-71-79.pdf"},
             {"title": "Chapter 5", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-81-92.pdf"},
  
              //  {"title": "Chapter 6", "pdf": "assets/pdfs/kedusatMetshafChapter/kedusatmetsahft7-13-34.pdf"},
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