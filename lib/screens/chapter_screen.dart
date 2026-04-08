import 'package:flutter/material.dart';
import 'pdf_screen.dart';

class ChapterScreen extends StatelessWidget {

  final String courseName;
  final List chapters;

  ChapterScreen({required this.courseName, required this.chapters});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(courseName)),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {

          final chapter = chapters[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PdfScreen(
                    path: chapter["pdf"],
                    title: chapter["title"],
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark 
                      ? Colors.grey[800] 
                      : const Color(0xFFF3F5FA), // Light grey/blue background
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    // Outlined left icon box
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).brightness == Brightness.dark 
                              ? Colors.grey.shade400 
                              : const Color(0xFF4A5C75),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.folder_outlined,
                          color: Theme.of(context).brightness == Brightness.dark 
                              ? Colors.grey.shade400 
                              : const Color(0xFF4A5C75),
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    // Title, Subtitle, and stacked avatars
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chapter["title"],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).brightness == Brightness.dark 
                                  ? Colors.white 
                                  : const Color(0xFF2B3A4A),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            "Course Document",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Theme.of(context).brightness == Brightness.dark 
                                  ? Colors.grey[400] 
                                  : Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Stacked avatars imitating the design
                          SizedBox(
                            height: 24,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.blue.shade200,
                                    child: const Icon(Icons.person, size: 14, color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  left: 14,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.purple.shade200,
                                    child: const Icon(Icons.menu_book, size: 12, color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  left: 28,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.orange.shade200,
                                    child: const Icon(Icons.star, size: 12, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}