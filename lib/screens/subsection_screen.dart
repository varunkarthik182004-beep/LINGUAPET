import 'package:flutter/material.dart';
import 'package:linguapet/models/beginner_section.dart';
import 'package:linguapet/screens/word_learning_screen.dart';
import 'package:linguapet/services/progress_service.dart';

class SubsectionScreen extends StatefulWidget {
  final BeginnerSection section;

  const SubsectionScreen({
    super.key,
    required this.section,
  });

  @override
  State<SubsectionScreen> createState() => _SubsectionScreenState();
}

class _SubsectionScreenState extends State<SubsectionScreen> {

  final progressService = ProgressService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.section.title),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.section.subsections.length,
        itemBuilder: (context, index) {

          final subsection = widget.section.subsections[index];

          bool isCompleted = progressService.isSubsectionCompleted(
            widget.section.title,
            subsection.title,
          );

          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),

              title: Text(
                subsection.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              trailing: isCompleted
                  ? const Icon(Icons.check_circle, color: Colors.green)
                  : const Icon(Icons.arrow_forward_ios),

              onTap: () async {

                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => WordLearningScreen(
                      subsection: subsection,
                      sectionIndex: index,
                    ),
                  ),
                );

                // 🔥 refresh after coming back
                setState(() {});
              },
            ),
          );
        },
      ),
    );
  }
}