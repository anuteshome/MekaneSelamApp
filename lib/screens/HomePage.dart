import 'package:flutter/material.dart';
import 'package:mk/screens/grade_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            // Image.asset('assets/image/logos.png'),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.asset('assets/image/logos.png', fit: BoxFit.cover),
            ),
            Text(
              "አንኳን ደህና መጡ",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight(700)),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Text(
                  "MK የተለያዩ የመማሪያ ማብራሪያዎችን እና ማቴሪያሎችን በአንድ ቦታ ለመድረስ የሚያግዝ ነው። ተማሪዎች የተለያዩ መጻሕፍት፣ ሰነዶች እና ሌሎች የመማሪያ ምንጮችን በቀላሉ እና በፍጥነት እንዲያገኙ ይረዳል።",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight(500)),
                ),
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradeScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  "መጻሕፍት",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
