import 'package:flutter/material.dart';
import '../models/beginner_subsection.dart';
import '../services/tts_service.dart';
import '../services/progress_service.dart';

class WordLearningScreen extends StatefulWidget {
  final BeginnerSubsection subsection;
  final int sectionIndex;

  const WordLearningScreen({
    super.key,
    required this.subsection,
    required this.sectionIndex,
  });

  @override
  State<WordLearningScreen> createState() => _WordLearningScreenState();
}

class _WordLearningScreenState extends State<WordLearningScreen> {

  final TtsService tts = TtsService();
  final ProgressService progress = ProgressService();

  @override
  void initState() {
    super.initState();
    tts.init("ta-IN"); // ✅ ONLY THIS REMAINS
  }

  @override
  void dispose() {
    tts.stop(); // ✅ keep this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subsection.title),
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: widget.subsection.words.length,
              itemBuilder: (context, index) {
                final word = widget.subsection.words[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    title: Text(
                      word.tamil,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "${word.english} • ${word.transliteration}",
                    ),

                    trailing: IconButton(
                      icon: const Icon(Icons.volume_up),
                      onPressed: () {
                        tts.speak(word.tamil);
                      },
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Finish Section"),
              onPressed: () async {

                await progress.addXP(20);

                await progress.completeSubsection(
                  widget.subsection.parentSectionTitle,
                  widget.subsection.title,
                );

                await progress.completeSection(widget.sectionIndex);

                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}