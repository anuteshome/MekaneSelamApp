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
          {"title": "Introduction", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade6kidusatmesahiftcompressed-1-10.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade 6- kidusat mesahift_compressed-13-17.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade 6- kidusat mesahift_compressed-19-34.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade 6- kidusat mesahift_compressed-35-40.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade 6- kidusat mesahift_compressed-41-46.pdf"},
              {"title": "Chapter 5", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade 6- kidusat mesahift_compressed-47-54.pdf"},
               {"title": "Chapter 6", "pdf": "assets/pdfs/Grade6/Grade6KidusatMetsahft/Grade 6- kidusat mesahift_compressed-55-73.pdf"},
        ]
      },
      {
        "name": "መሠረተ ሐይማኖት",
        "chapters": [
         {"title": "Introduction", "pdf": "assets/pdfs/Grade6/Geade6MeserteHaymanot/Grade 6- meserete hayemanote_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade6/Geade6MeserteHaymanot/Grade 6- meserete hayemanote_compressed-9-20.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade6/Geade6MeserteHaymanot/Grade 6- meserete hayemanote_compressed-21-45-1-12.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade6/Geade6MeserteHaymanot/Grade 6- meserete hayemanote_compressed-21-45-13-25.pdf"},
            {"title": "Chapter 4", "pdf": "assets/pdfs/Grade6/Geade6MeserteHaymanot/Grade 6- meserete hayemanote_compressed-47-64.pdf"},
             {"title": "Chapter 5", "pdf": "assets/pdfs/Grade6/Geade6MeserteHaymanot/Grade 6- meserete hayemanote_compressed-65-84.pdf"},
        ]
      },
         {
        "name": "ክርስቲያናዊ ስነ ምግባር",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade6/Grade6KistyanawiSenemegbar/Grade 6- krstianawi senmegebare_compressed-1-9.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade6/Grade6KistyanawiSenemegbar/Grade 6- krstianawi senmegebare_compressed-11-22.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade6/Grade6KistyanawiSenemegbar/Grade 6- krstianawi senmegebare_compressed-23-62.pdf"},
        ]
      },
         {
        "name": "ልሳነ ግዕዝ",
        "chapters": [
           {"title": "Introduction", "pdf": "assets/pdfs/Grade6/Grade6LesaneGeez/Grade 6- lsane geez_compressed-1-8.pdf"},
            {"title": "Chapter 1", "pdf": "assets/pdfs/Grade6/Grade6LesaneGeez/Grade 6- lsane geez_compressed-9-18.pdf"},
             {"title": "Chapter 2", "pdf": "assets/pdfs/Grade6/Grade6LesaneGeez/Grade 6- lsane geez_compressed-19-26.pdf"},
              {"title": "Chapter 3", "pdf": "assets/pdfs/Grade6/Grade6LesaneGeez/Grade 6- lsane geez_compressed-27-32.pdf"},
               {"title": "Chapter 4", "pdf": "assets/pdfs/Grade6/Grade6LesaneGeez/Grade 6- lsane geez_compressed-33-39.pdf"},
                {"title": "Chapter 5", "pdf": "assets/pdfs/Grade6/Grade6LesaneGeez/Grade 6- lsane geez_compressed-41-56.pdf"},

        ]
      },
         {
        "name": "ስርዓተ ቤተ ክርስቲያን",
        "chapters": [
      {"title": "Introduction", "pdf": "assets/pdfs/Grade6/Grade6SireateBetekerstyan/Grade 6- sirate betekristian_compressed-1-12.pdf"},
      {"title": "Chapter 1", "pdf": "assets/pdfs/Grade6/Grade6SireateBetekerstyan/Grade 6- sirate betekristian_compressed-13-16.pdf"},
      {"title": "Chapter 2", "pdf": "assets/pdfs/Grade6/Grade6SireateBetekerstyan/Grade 6- sirate betekristian_compressed-17-24.pdf"},
      {"title": "Chapter 3", "pdf": "assets/pdfs/Grade6/Grade6SireateBetekerstyan/Grade 6- sirate betekristian_compressed-25-30.pdf"},
      {"title": "Chapter 4", "pdf": "assets/pdfs/Grade6/Grade6SireateBetekerstyan/Grade 6- sirate betekristian_compressed-31-36.pdf"},
      {"title": "Chapter 5", "pdf": "assets/pdfs/Grade6/Grade6SireateBetekerstyan/Grade 6- sirate betekristian_compressed-37-49.pdf"},
        ]
      },
        {
        "name": "የቤተ ክርስቲያን ታሪክ",
        "chapters": [
         {"title": "Introduction", "pdf": "assets/pdfs/Grade6/Grade6YebtekrstyanTarik/Grade 6- yebetekristian tarik_compressed-1-11.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade6/Grade6YebtekrstyanTarik/Grade 6- yebetekristian tarik_compressed-13-17.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade6/Grade6YebtekrstyanTarik/Grade 6- yebetekristian tarik_compressed-19-26.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade6/Grade6YebtekrstyanTarik/Grade 6- yebetekristian tarik_compressed-27-32.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/Grade6/Grade6YebtekrstyanTarik/Grade 6- yebetekristian tarik_compressed-33-37.pdf"},
              {"title": "Chapter 5", "pdf": "assets/pdfs/Grade6/Grade6YebtekrstyanTarik/Grade 6- yebetekristian tarik_compressed-39-52.pdf"},
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