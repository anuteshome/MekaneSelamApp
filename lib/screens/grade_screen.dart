import 'package:flutter/material.dart';
import 'package:mk/screens/course_screen.dart';


class GradeScreen extends StatelessWidget {

  final List years= [
"Year 1",
"Year 2",

  ];
  // const GradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("Grades")),
      body: ListView.builder(
        itemCount: years.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(years[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CourseScreen(grade: years[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}