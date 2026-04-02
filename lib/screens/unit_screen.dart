import 'package:flutter/material.dart';
import '../models/unit.dart';
import '../data/beginner_sections.dart';
import 'section_screen.dart';

class UnitScreen extends StatelessWidget {
  final Unit unit;

  const UnitScreen({super.key, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(unit.title),
      ),
      body: ListView.builder(
        itemCount: beginnerSections.length,
        itemBuilder: (context, index) {
          final section = beginnerSections[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(section.title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SectionScreen(section: section),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}