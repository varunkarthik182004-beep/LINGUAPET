import 'package:flutter/material.dart';
import '../models/beginner_section.dart';
import 'subsection_screen.dart';

class SectionScreen extends StatelessWidget {
  final BeginnerSection section;

  const SectionScreen({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(section.title)),
      body: ListView.builder(
        itemCount: section.subsections.length,
        itemBuilder: (context, index) {
          final subsection = section.subsections[index];

          return ListTile(
            title: Text(subsection.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SubsectionScreen(section: section),
                ),
              );
            },
          );
        },
      ),
    );
  }
}