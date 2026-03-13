import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
          children: [
            SizedBox(height:50),
            Image.asset('assets/image/logos.png'),
  Text("አንኳን ደህና መጡ")
          ],
        )
    
      ),
    );
  }
}