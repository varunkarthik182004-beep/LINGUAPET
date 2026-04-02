import 'package:flutter/material.dart';
import 'package:linguapet/models/unit.dart'; // ✅ Added
import 'package:linguapet/services/progress_service.dart';
import 'package:linguapet/screens/subsection_screen.dart';
import 'package:linguapet/data/beginner_sections.dart';

class UnitMapScreen extends StatefulWidget {
  final Unit unit;

  const UnitMapScreen({
    super.key,
    required this.unit,
  });

  @override
  State<UnitMapScreen> createState() => _UnitMapScreenState();
}

class _UnitMapScreenState extends State<UnitMapScreen> {

  final ProgressService progress = ProgressService();
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    initProgress();
  }

  Future<void> initProgress() async {
    await progress.init();

    print("Completed Sections: ${progress.completedSections}");
    print("Completed Subsections: ${progress.completedSubsections}");

    setState(() {
      isLoaded = true;
    });
  }

  bool isSectionUnlocked(int index) {
    if (index == 0) {
      return true;
    }

    return progress.completedSections.contains(index - 1);
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
        title: const Text("Beginner Path"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: beginnerSections.length,
        itemBuilder: (context, index) {

          final section = beginnerSections[index];
          final bool unlocked = isSectionUnlocked(index);
          final bool isCompleted =
              progress.completedSections.contains(index);

          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: unlocked
                ? Colors.white
                : Colors.grey.shade200,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              title: Text(
                section.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: unlocked
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
              trailing: isCompleted
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : unlocked
                      ? const Icon(Icons.arrow_forward_ios)
                      : const Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
              onTap: unlocked
                  ? () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SubsectionScreen(
                            section: section,
                          ),
                        ),
                      );

                      await progress.init();

                      print("After Return - Completed Sections: ${progress.completedSections}");

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