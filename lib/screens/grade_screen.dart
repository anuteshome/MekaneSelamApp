import 'package:flutter/material.dart';
import 'package:mk/screens/course_screen.dart';

class GradeScreen extends StatelessWidget {
  final List years = [
    "2ተኛ ክፍል",
    "3ተኛ ክፍል",
    "4ተኛ ክፍል",
    "5ተኛ ክፍል",
    "ቀዳማይ 1",
    "ቀዳማይ 2",
  ];
  // const GradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ክፍሎች",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView.builder(
          itemCount: years.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                years[index],
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseScreen(grade: years[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
