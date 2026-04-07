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
     "5ተኛ ክፍል": [
      {
        "name": "ቅዱሳት መጻሕፍት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade5/KidusatMetsahfet5/Grade 5- kidusat mesahift_compressed-1-10.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade5/KidusatMetsahfet5/Grade 5- kidusat mesahift_compressed-11-15.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade5/KidusatMetsahfet5/Grade 5- kidusat mesahift_compressed-17-32.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade5/KidusatMetsahfet5/Grade 5- kidusat mesahift_compressed-33-38.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade5/KidusatMetsahfet5/Grade 5- kidusat mesahift_compressed-39-44.pdf"},
          {"title": "Chapter 5", "pdf": "assets/pdfs/Grade5/KidusatMetsahfet5/Grade 5- kidusat mesahift_compressed-45.pdf"},
     ]
      },
       {
        "name": "ክርስቲያናዊ ስነ-ምግባር",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade5/KerstyanawiSenemegbar5/Geade 5- krstianawi senmegebare_compressed-1-9.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade5/KerstyanawiSenemegbar5/Geade 5- krstianawi senmegebare_compressed-11-24.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade5/KerstyanawiSenemegbar5/Geade 5- krstianawi senmegebare_compressed-25-34.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade5/KerstyanawiSenemegbar5/Geade 5- krstianawi senmegebare_compressed-35-42.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade5/KerstyanawiSenemegbar5/Geade 5- krstianawi senmegebare_compressed-43-48.pdf"},
     ]
      },
       {
        "name": "ልሳነ ግዕዝ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade5/LesaneGeez5/Grade 5- lsane geez_compressed-1-10.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade5/LesaneGeez5/Grade 5- lsane geez_compressed-11-18.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade5/LesaneGeez5/Grade 5- lsane geez_compressed-19-32.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade5/LesaneGeez5/Grade 5- lsane geez_compressed-33-40.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade5/LesaneGeez5/Grade 5- lsane geez_compressed-41-49.pdf"},
     ]
      },
      {
        "name": "መሠረተ ሐይማኖት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade5/MeserteHaymanot5/Grade 5- meserete haymanote_compressed-1-10.pdf"},
         {"title": "Chapter 1", "pdf": "assets/pdfs/Grade5/MeserteHaymanot5/Grade 5- meserete haymanote_compressed-11-23.pdf"},
         {"title": "Chapter 2", "pdf": "assets/pdfs/Grade5/MeserteHaymanot5/Grade 5- meserete haymanote_compressed-25-36.pdf"},
         {"title": "Chapter 3", "pdf": "assets/pdfs/Grade5/MeserteHaymanot5/Grade 5- meserete haymanote_compressed-37-51.pdf"},
         {"title": "Chapter 4", "pdf": "assets/pdfs/Grade5/MeserteHaymanot5/Grade 5- meserete haymanote_compressed-53-61.pdf"},
         {"title": "Chapter 5", "pdf": "assets/pdfs/Grade5/MeserteHaymanot5/Grade 5- meserete haymanote_compressed-63-78.pdf"},
     ]
      },
      {
        "name": "ስርዐተ ቤተ ክርስቲያን",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade5/SerateBetekrstyan5/Grade 5- sirate betekristian_compressed-1-9.pdf"},
           {"title": "Chapter 1", "pdf": "assets/pdfs/Grade5/SerateBetekrstyan5/Grade 5- sirate betekristian_compressed-11-21.pdf"},
            {"title": "Chapter 2", "pdf": "assets/pdfs/Grade5/SerateBetekrstyan5/Grade 5- sirate betekristian_compressed-23-28.pdf"},
             {"title": "Chapter 3", "pdf": "assets/pdfs/Grade5/SerateBetekrstyan5/Grade 5- sirate betekristian_compressed-29-49.pdf"},
              {"title": "Chapter 4", "pdf": "assets/pdfs/Grade5/SerateBetekrstyan5/Grade 5- sirate betekristian_compressed-51-57.pdf"},
               {"title": "Chapter 5", "pdf": "assets/pdfs/Grade5/SerateBetekrstyan5/Grade 5- sirate betekristian_compressed-59-64.pdf"},
        ]
      },
      {
        "name": "የቤተ ክርስቲያን ታሪክ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade5/YebetekrstyanTarik5/Grade 5- yebetekristian tarik_compressed-1-7.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade5/YebetekrstyanTarik5/Grade 5- yebetekristian tarik_compressed-9-21.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade5/YebetekrstyanTarik5/Grade 5- yebetekristian tarik_compressed-23-34.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade5/YebetekrstyanTarik5/Grade 5- yebetekristian tarik_compressed-35-48.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade5/YebetekrstyanTarik5/Grade 5- yebetekristian tarik_compressed-49-62.pdf"},
     ]
      },
        ],
         "4ተኛ ክፍል": [
      {
        "name": "ክርስቲያናዊ ስነ ምግባር",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade4/KerstyanawiSenemebgar4/Grade 4- krstianawi sinemgbar_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade4/KerstyanawiSenemebgar4/Grade 4- krstianawi sinemgbar_compressed-9-12.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade4/KerstyanawiSenemebgar4/Grade 4- krstianawi sinemgbar_compressed-13-17.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade4/KerstyanawiSenemebgar4/Grade 4- krstianawi sinemgbar_compressed-19-22.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/Grade4/KerstyanawiSenemebgar4/Grade 4- krstianawi sinemgbar_compressed-23-43.pdf"},
        ]
      },
      {
        "name": "ቅዱሳት መጻሕፍት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-9-13.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-15-24.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-25-28.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-29-42.pdf"},
              {"title": "Chapter 5", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-43-56.pdf"},
               {"title": "Chapter 6", "pdf": "assets/pdfs/Grade4/KidusatMetsaheft4/Grade 4- kidusat mesahft_compressed-57-72.pdf"},
        ]
      },
      {
        "name": "ግዕዝ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade4/LesaneGeez4/Grade 4- lsane geez_compressed-1-5.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade4/LesaneGeez4/Grade 4- lsane geez_compressed-7-13.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade4/LesaneGeez4/Grade 4- lsane geez_compressed-14-20.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade4/LesaneGeez4/Grade 4- lsane geez_compressed-21-34.pdf"},
        ]
      },
      {
        "name": "መሠረተ ሐይማኖት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade4/MesereteHaymanot4/Grade 4- meserete haymanot_compressed-1-9.pdf"},
         {"title": "Chapter 1", "pdf": "assets/pdfs/Grade4/MesereteHaymanot4/Grade 4- meserete haymanot_compressed-11-42-1-16.pdf"},
         {"title": "Chapter 2", "pdf": "assets/pdfs/Grade4/MesereteHaymanot4/Grade 4- meserete haymanot_compressed-11-42-17-32.pdf"},
         {"title": "Chapter 3", "pdf": "assets/pdfs/Grade4/MesereteHaymanot4/Grade 4- meserete haymanot_compressed-43-54.pdf"},
         {"title": "Chapter 4", "pdf": "assets/pdfs/Grade4/MesereteHaymanot4/Grade 4- meserete haymanot_compressed-55-67.pdf"},
        ]
      },
      {
        "name": "ስርዓተ ቤተ ክርስቲያን",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade4/SerateBetekerstyan4/Grade 4- sireate betekrstian_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade4/SerateBetekerstyan4/Grade 4- sireate betekrstian_compressed-9-25.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade4/SerateBetekerstyan4/Grade 4- sireate betekrstian_compressed-27-34.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade4/SerateBetekerstyan4/Grade 4- sireate betekrstian_compressed-35-42.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade4/SerateBetekerstyan4/Grade 4- sireate betekrstian_compressed-43-57.pdf"},
          {"title": "Chapter 5", "pdf": "assets/pdfs/Grade4/SerateBetekerstyan4/Grade 4- sireate betekrstian_compressed-59-70.pdf"},
        ]
      },
      {
        "name": "የቤተ ክርስቲያን ታሪክ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade4/YeBetekerstyanTarik/Grade 4- yebetekrstian tarik_compressed-1-8.pdf"},
          {"title": "Chpater 1", "pdf": "assets/pdfs/Grade4/YeBetekerstyanTarik/Grade 4- yebetekrstian tarik_compressed-9-13.pdf"},
          {"title": "Chpater 2", "pdf": "assets/pdfs/Grade4/YeBetekerstyanTarik/Grade 4- yebetekrstian tarik_compressed-15-36.pdf"},
          {"title": "Chpater 3", "pdf": "assets/pdfs/Grade4/YeBetekerstyanTarik/Grade 4- yebetekrstian tarik_compressed-37-50.pdf"},
        ]
      },
         ],
          "3ተኛ ክፍል": [
      {
        "name": "ክርስቲያናዊ ስነ ምግባር",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade3/KerstyanawiSenemgbar3/Grade 3- krstianawi senmegebare_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade3/KerstyanawiSenemgbar3/Grade 3- krstianawi senmegebare_compressed-9-19.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade3/KerstyanawiSenemgbar3/Grade 3- krstianawi senmegebare_compressed-21-27.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade3/KerstyanawiSenemgbar3/Grade 3- krstianawi senmegebare_compressed-29-32.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade3/KerstyanawiSenemgbar3/Grade 3- krstianawi senmegebare_compressed-33-36.pdf"},
          {"title": "Chapter 5", "pdf": "assets/pdfs/Grade3/KerstyanawiSenemgbar3/Grade 3- krstianawi senmegebare_compressed-37-42.pdf"},
        ]
      },
      {
        "name": "ቅዱሳት መጻሕፍት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade3/KidusatMetsaheft3/Grade 3- kidusat mesahift_compressed_compressed-1-10.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade3/KidusatMetsaheft3/Grade 3- kidusat mesahift_compressed_compressed-11-20.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade3/KidusatMetsaheft3/Grade 3- kidusat mesahift_compressed_compressed-21-31.pdf"},
          {"title": "Chapter 3", "pdf": "assets/pdfs/Grade3/KidusatMetsaheft3/Grade 3- kidusat mesahift_compressed_compressed-33-44.pdf"},
          {"title": "Chapter 4", "pdf": "assets/pdfs/Grade3/KidusatMetsaheft3/Grade 3- kidusat mesahift_compressed_compressed-45-57.pdf"},
          {"title": "Chapter 5", "pdf": "assets/pdfs/Grade3/KidusatMetsaheft3/Grade 3- kidusat mesahift_compressed_compressed-59-84.pdf"},
        ]
      },
      {
        "name": "ግዕዝ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade3/LesaneGeez3/Grade 3- lsane geez_compressed-1-7.pdf"},
           {"title": "Chapter 1", "pdf": "assets/pdfs/Grade3/LesaneGeez3/Grade 3- lsane geez_compressed-9-14.pdf"},
            {"title": "Chapter 2", "pdf": "assets/pdfs/Grade3/LesaneGeez3/Grade 3- lsane geez_compressed-15-19.pdf"},
             {"title": "Chapter 3", "pdf": "assets/pdfs/Grade3/LesaneGeez3/Grade 3- lsane geez_compressed-21-28.pdf"},
              {"title": "Chapter 4", "pdf": "assets/pdfs/Grade3/LesaneGeez3/Grade 3- lsane geez_compressed-29-32.pdf"},
        ]
      },
      {
        "name": "መሠረተ ሐይማኖት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade3/MeserteHaymanot3/Grade 3- meserete haymanot_compressed-1-9.pdf"},
        {"title": "Chapter 1", "pdf": "assets/pdfs/Grade3/MeserteHaymanot3/Grade 3- meserete haymanot_compressed-10-18.pdf"},
        {"title": "Chapter 2", "pdf": "assets/pdfs/Grade3/MeserteHaymanot3/Grade 3- meserete haymanot_compressed-19-29.pdf"},
        
        ]
      },
      {
        "name": "ስርዓተ ቤተ ክርስቲያን",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade3/Sreatebertkerstyan3/Grade 3- sirate betekristian_compressed-1-7.pdf"},
         {"title": "Chapter 1", "pdf": "assets/pdfs/Grade3/Sreatebertkerstyan3/Grade 3- sirate betekristian_compressed-9-12.pdf"},
         {"title": "Chapter 2", "pdf": "assets/pdfs/Grade3/Sreatebertkerstyan3/Grade 3- sirate betekristian_compressed-13-16.pdf"},
         {"title": "Chapter 3", "pdf": "assets/pdfs/Grade3/Sreatebertkerstyan3/Grade 3- sirate betekristian_compressed-17-22.pdf"},
         {"title": "Chapter 4", "pdf": "assets/pdfs/Grade3/Sreatebertkerstyan3/Grade 3- sirate betekristian_compressed-23-26.pdf"},

        ]
      },
      {
        "name": "የቤተ ክርስቲያን ታሪክ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-9-11.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-13-15.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-17-19.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-21-23.pdf"},
              {"title": "Chapter 5", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-25-27.pdf"},
               {"title": "Chapter 6", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-29-32.pdf"},
                {"title": "Chapter 7", "pdf": "assets/pdfs/Grade3/YeBetekerstyanTarik3/Grade 3- yebetekristian tarik_compressed-33-36.pdf"},
        ]
      },
         ],
          "2ተኛ ክፍል": [
      {
        "name": "ክርስቲያናዊ ስነ ምግባር",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade2/KerstyanawiSenmgbar2/Grade 2- krstianawi sinemgbar_compressed-1-8.pdf"},
         {"title": "Chapter 1", "pdf": "assets/pdfs/Grade2/KerstyanawiSenmgbar2/Grade 2- krstianawi sinemgbar_compressed-9-12.pdf"},
         {"title": "Chapter 2", "pdf": "assets/pdfs/Grade2/KerstyanawiSenmgbar2/Grade 2- krstianawi sinemgbar_compressed-13-22.pdf"},
         {"title": "Chapter 3", "pdf": "assets/pdfs/Grade2/KerstyanawiSenmgbar2/Grade 2- krstianawi sinemgbar_compressed-23-26.pdf"},
         {"title": "Chapter 4", "pdf": "assets/pdfs/Grade2/KerstyanawiSenmgbar2/Grade 2- krstianawi sinemgbar_compressed-27-30.pdf"},
         {"title": "Chapter 5", "pdf": "assets/pdfs/Grade2/KerstyanawiSenmgbar2/Grade 2- krstianawi sinemgbar_compressed-31-33.pdf"},
        ]
      },
      {
        "name": "ቅዱሳት መጻሕፍት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade2/KidusatMetshaft2/Grade 2- kidusat mesahift-1-8.pdf"},
         {"title": "Chapter 1", "pdf": "assets/pdfs/Grade2/KidusatMetshaft2/Grade 2- kidusat mesahift-9-26.pdf"},
         {"title": "Chapter 2", "pdf": "assets/pdfs/Grade2/KidusatMetshaft2/Grade 2- kidusat mesahift-27-62.pdf"},
        ]
      },
      {
        "name": "መሠረተ ሐይማኖት",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade2/MeserteHaymanot2/Grade 2 - meserete haymanot_compressed-1-6.pdf"},
        {"title": "Chapter 1", "pdf": "assets/pdfs/Grade2/MeserteHaymanot2/Grade 2 - meserete haymanot_compressed-7-14.pdf"},
         {"title": "Chapter 2", "pdf": "assets/pdfs/Grade2/MeserteHaymanot2/Grade 2 - meserete haymanot_compressed-15-38.pdf"},
        
        ]
      },
      {
        "name": "ስርዓተ ቤተ ክርስቲያን",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade2/SerateBetekerstyan2/Grade 2- sireat betekrstian_compressed-1-6.pdf"},
         {"title": "Chapter 1", "pdf": "assets/pdfs/Grade2/SerateBetekerstyan2/Grade 2- sireat betekrstian_compressed-7-18.pdf"},
          {"title": "Chapter 2", "pdf": "assets/pdfs/Grade2/SerateBetekerstyan2/Grade 2- sireat betekrstian_compressed-19-24.pdf"},
           {"title": "Chapter 3", "pdf": "assets/pdfs/Grade2/SerateBetekerstyan2/Grade 2- sireat betekrstian_compressed-25-28.pdf"},
            {"title": "Chapter 4", "pdf": "assets/pdfs/Grade2/SerateBetekerstyan2/Grade 2- sireat betekrstian_compressed-29-34.pdf"},
             {"title": "Chapter 5", "pdf": "assets/pdfs/Grade2/SerateBetekerstyan2/Grade 2- sireat betekrstian_compressed-35-42.pdf"},
        ]
      },
      {
        "name": "የቤተ ክርስቲያን ታሪክ",
        "chapters": [
          {"title": "Introduction", "pdf": "assets/pdfs/Grade2/YebetekerstyanTarik2/Grade 2- yebetekristian tarik_compressed-1-8.pdf"},
          {"title": "Chapter 1", "pdf": "assets/pdfs/Grade2/YebetekerstyanTarik2/Grade 2- yebetekristian tarik_compressed-9-10.pdf"},
           {"title": "Chapter 2", "pdf": "assets/pdfs/Grade2/YebetekerstyanTarik2/Grade 2- yebetekristian tarik_compressed-11-12.pdf"},
            {"title": "Chapter 3", "pdf": "assets/pdfs/Grade2/YebetekerstyanTarik2/Grade 2- yebetekristian tarik_compressed-13-14.pdf"},
             {"title": "Chapter 4", "pdf": "assets/pdfs/Grade2/YebetekerstyanTarik2/Grade 2- yebetekristian tarik_compressed-15-23.pdf"},
        ]
      },
         ]
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