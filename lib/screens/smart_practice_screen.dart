import 'package:flutter/material.dart';
import '../services/progress_service.dart';

class SmartPracticeScreen extends StatefulWidget {
  final String section;

  const SmartPracticeScreen({
    super.key,
    required this.section,
  });

  @override
  State<SmartPracticeScreen> createState() => _SmartPracticeScreenState();
}

class _SmartPracticeScreenState extends State<SmartPracticeScreen> {
  final ProgressService progress = ProgressService();

  List<String> practiceWords = [];
  int currentIndex = 0;
  bool isLoaded = false;

  List<String> options = [];
  String? selectedAnswer;
  bool showResult = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await progress.init();
    await loadWords();
  }

  Future<void> loadWords() async {
    final completedWords = await progress.getAllCompletedWords();

    final sorted = await progress.getSmartRevisionWords(
      widget.section,
      completedWords,
    );

    setState(() {
      practiceWords = sorted.take(10).toList();
      isLoaded = true;
    });

    generateOptions();
  }

  void generateOptions() {
    if (practiceWords.isEmpty) return;

    final correct = practiceWords[currentIndex];

    List<String> allOptions = List.from(practiceWords);
    allOptions.remove(correct);
    allOptions.shuffle();

    options = allOptions.take(3).toList();
    options.add(correct);
    options.shuffle();
  }

  void selectAnswer(String selected) async {
    if (showResult) return;

    final correct = practiceWords[currentIndex];

    bool isCorrect = selected == correct;

    setState(() {
      selectedAnswer = selected;
      showResult = true;
    });

    await progress.saveWordPerformance(
      widget.section,
      correct,
      isCorrect,
    );

    await Future.delayed(const Duration(seconds: 1));

    if (currentIndex < practiceWords.length - 1) {
      setState(() {
        currentIndex++;
        selectedAnswer = null;
        showResult = false;
        generateOptions();
      });
    } else {
      Navigator.pop(context);
    }
  }

  Color getButtonColor(String option) {
    if (!showResult) return Colors.blue;

    final correct = practiceWords[currentIndex];

    if (option == correct) return Colors.green;
    if (option == selectedAnswer) return Colors.red;

    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoaded) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (practiceWords.isEmpty) {
      return const Scaffold(
        body: Center(child: Text("No words to revise yet")),
      );
    }

    String word = practiceWords[currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text("Smart Practice")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const SizedBox(height: 40),

            Text(
              word,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Select correct answer",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            ...options.map((opt) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: getButtonColor(opt),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () => selectAnswer(opt),
                  child: Text(opt),
                ),
              );
            }),

          ],
        ),
      ),
    );
  }
}