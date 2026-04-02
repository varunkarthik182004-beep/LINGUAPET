import 'package:flutter/material.dart';
import 'package:linguapet/services/progress_service.dart';
import 'package:linguapet/screens/unit_screen.dart';
import 'package:linguapet/data/beginner_sections.dart';


class BeginnerSectionsScreen extends StatefulWidget {
  const BeginnerSectionsScreen({super.key});

  @override
  State<BeginnerSectionsScreen> createState() =>
      _BeginnerSectionsScreenState();
}

class _BeginnerSectionsScreenState
    extends State<BeginnerSectionsScreen> {

  final ProgressService progress = ProgressService();
  bool isLoaded = false;

  final List<Map<String, String>> beginnerSections = [
    {"title": "Introduction", "emoji": "👋"},
    {"title": "Basic Sentences", "emoji": "🚀"},
    {"title": "Numbers & Family", "emoji": "👨‍👩‍👧"},
    {"title": "Numbers & Counting", "emoji": "🔢"},
    {"title": "Activities", "emoji": "🏃"},
    {"title": "Food & Tastes", "emoji": "🍜"},
    {"title": "Vegetables & Fruits", "emoji": "🥕"},
    {"title": "Eating Out", "emoji": "🍽"},
    {"title": "Where is it?", "emoji": "🧭"},
    {"title": "In the Café", "emoji": "☕"},
  ];

  @override
  void initState() {
    super.initState();
    initProgress();
  }

  Future<void> initProgress() async {
    await progress.init();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoaded) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Beginner Units"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: beginnerSections.length,
        itemBuilder: (context, index) {

          final section = beginnerSections[index];

          final bool unlocked =
              index < progress.currentUnit;

          final bool completed =
              progress.completedSections.contains(index);

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: unlocked
                ? Colors.white
                : Colors.grey.shade200,
            child: ListTile(
              leading: Text(
                section["emoji"]!,
                style:
                    const TextStyle(fontSize: 28),
              ),
              title: Text(
                section["title"]!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: unlocked
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
              subtitle: completed
                  ? const Text(
                      "✅ Mastered",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : unlocked
                      ? const Text(
                          "Complete 10 words + 10 sentences")
                      : const Text("Locked"),

              trailing: completed
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : unlocked
                      ? const Icon(
                          Icons.arrow_forward_ios)
                      : const Icon(
                          Icons.lock,
                          color: Colors.grey),

              onTap: unlocked
                  ? () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => UnitScreen(
                            section: beginnerSection[index],
                          ),
                        ),
                      );

                      await progress.init();
                      setState(() {});
                    }
                  : null,
            ),
          );
        },
      ),
    );
  }
}
