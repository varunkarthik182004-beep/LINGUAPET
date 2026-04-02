import 'package:shared_preferences/shared_preferences.dart';
import 'package:linguapet/data/beginner_sections.dart';
import 'package:linguapet/models/beginner_subsection.dart';

enum Tier {
  beginner,
  elementary,
  intermediate,
  upper,
  advanced,
}

class ProgressService {
  static final ProgressService _instance = ProgressService._internal();
  factory ProgressService() => _instance;
  ProgressService._internal();

  late SharedPreferences prefs;

  int xp = 0;
  int level = 1;
  int streak = 0;

  int currentUnit = 1;

  int wordsToday = 0;
  int sentencesToday = 0;

  DateTime? lastActiveDate;

  bool dailyGoalCompleted = false;

  List<String> unlockedBadges = [];
  List<int> completedSections = [];
  List<String> sectionBadges = [];
  List<String> completedSubsections = [];

  // 🔥 SMART PRACTICE STORAGE
  Map<String, Map<String, int>> wordStats = {};

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();

    xp = prefs.getInt('xp') ?? 0;
    level = prefs.getInt('level') ?? 1;
    streak = prefs.getInt('streak') ?? 0;
    currentUnit = prefs.getInt('currentUnit') ?? 1;

    wordsToday = prefs.getInt('wordsToday') ?? 0;
    sentencesToday = prefs.getInt('sentencesToday') ?? 0;

    dailyGoalCompleted =
        prefs.getBool('dailyGoalCompleted') ?? false;

    unlockedBadges =
        prefs.getStringList('unlockedBadges') ?? [];

    completedSections =
        prefs.getStringList('completedSections')
                ?.map((e) => int.parse(e))
                .toList() ??
            [];

    sectionBadges =
        prefs.getStringList('sectionBadges') ?? [];

    completedSubsections =
        prefs.getStringList('completedSubsections') ?? [];

    final lastDateString =
        prefs.getString('lastActiveDate');
    if (lastDateString != null) {
      lastActiveDate =
          DateTime.parse(lastDateString);
    }
  }

  Future<void> completeSubsection(
    String sectionTitle,
    String subsectionTitle,
  ) async {
    String key = "$sectionTitle|$subsectionTitle";

    if (!completedSubsections.contains(key)) {
      completedSubsections.add(key);

      xp += 50;

      _checkSectionCompletion(sectionTitle);
      _checkLevelUp();
      _checkBadges();

      await _save();
    }
  }

  void _checkSectionCompletion(String sectionTitle) {
    final sectionIndex = beginnerSections
        .indexWhere((s) => s.title == sectionTitle);

    if (sectionIndex == -1) return;

    final section = beginnerSections[sectionIndex];

    bool allCompleted = true;

    for (var subsection in section.subsections) {
      String key = "$sectionTitle|${subsection.title}";
      if (!completedSubsections.contains(key)) {
        allCompleted = false;
        break;
      }
    }

    if (allCompleted &&
        !completedSections.contains(sectionIndex)) {
      completedSections.add(sectionIndex);
      xp += 100;
      sectionBadges.add("section_$sectionIndex");
    }
  }

  bool isSubsectionCompleted(
    String sectionTitle,
    String subsectionTitle,
  ) {
    String key = "$sectionTitle|$subsectionTitle";
    return completedSubsections.contains(key);
  }

  Future<void> markWordCompleted(
    String sectionTitle,
    String subsectionTitle,
    String wordTamil,
  ) async {
    String key =
        "word_done_${sectionTitle}_${subsectionTitle}_$wordTamil";

    bool alreadyDone = prefs.getBool(key) ?? false;

    if (!alreadyDone) {
      await prefs.setBool(key, true);
      wordsToday++;
      xp += 5;

      await updateStreak();
      await _checkDailyGoal();

      _checkLevelUp();
      _checkBadges();

      await _save();
    }
  }

  bool isWordCompleted(
    String sectionTitle,
    String subsectionTitle,
    String wordTamil,
  ) {
    String key =
        "word_done_${sectionTitle}_${subsectionTitle}_$wordTamil";
    return prefs.getBool(key) ?? false;
  }

  bool isTierUnlocked(Tier tier) {
    switch (tier) {
      case Tier.beginner:
        return true;
      case Tier.elementary:
        return currentUnit > 10;
      case Tier.intermediate:
        return currentUnit > 20;
      case Tier.upper:
        return currentUnit > 30;
      case Tier.advanced:
        return currentUnit > 40;
    }
  }

  Future<void> addXP(int amount) async {
    xp += amount;
    _checkLevelUp();
    _checkBadges();
    await _save();
  }

  Future<void> completeSection(int sectionIndex) async {
    if (!completedSections.contains(sectionIndex)) {
      completedSections.add(sectionIndex);
      xp += 100;
      sectionBadges.add("section_$sectionIndex");

      _checkLevelUp();
      _checkBadges();

      await _save();
    }
  }

  Future<void> updateStreak() async {
    final today = DateTime.now();

    if (lastActiveDate == null) {
      streak = 1;
    } else {
      final difference =
          today.difference(lastActiveDate!).inDays;

      if (difference == 1) {
        streak++;
        dailyGoalCompleted = false;
      } else if (difference > 1) {
        streak = 1;
        dailyGoalCompleted = false;
      }
    }

    lastActiveDate = today;

    await prefs.setInt('streak', streak);
    await prefs.setString(
        'lastActiveDate',
        today.toIso8601String());
  }

  Future<void> _checkDailyGoal() async {
    if (!dailyGoalCompleted &&
        (wordsToday + sentencesToday) >= 20) {
      xp += 30;
      dailyGoalCompleted = true;
      await prefs.setBool(
          'dailyGoalCompleted', true);
    }
  }

  void _checkLevelUp() {
    level = (xp ~/ 100) + 1;
  }

  void _checkBadges() {
    if (xp >= 5 &&
        !unlockedBadges.contains("first_word")) {
      unlockedBadges.add("first_word");
    }
  }

  // ============================
  // 🔥 SMART PRACTICE FINAL
  // ============================

  Future<void> saveWordPerformance(
    String section,
    String word,
    bool isCorrect,
  ) async {
    final key = 'word_${section}_$word';

    final existing = await loadWordPerformance(section, word);

    int correct = existing['correct']!;
    int wrong = existing['wrong']!;

    if (isCorrect) {
      correct++;
    } else {
      wrong++;
    }

    await prefs.setString(
      key,
      '$correct,$wrong',
    );
  }

  Future<Map<String, int>> loadWordPerformance(
    String section,
    String word,
  ) async {
    String? data = prefs.getString('word_${section}_$word');

    if (data != null) {
      List<String> parts = data.split(',');
      return {
        'correct': int.parse(parts[0]),
        'wrong': int.parse(parts[1]),
      };
    }

    return {
      'correct': 0,
      'wrong': 0,
    };
  }

  double calculateDifficulty(int correct, int wrong) {
    return wrong / (correct + 1);
  }

  Future<List<String>> getSmartRevisionWords(
    String section,
    List<String> words,
  ) async {
    List<Map<String, dynamic>> wordScores = [];

    for (String word in words) {
      final performance =
          await loadWordPerformance(section, word);

      double difficulty = calculateDifficulty(
        performance['correct']!,
        performance['wrong']!,
      );

      wordScores.add({
        'word': word,
        'difficulty': difficulty,
      });
    }

    wordScores.sort(
      (a, b) =>
          b['difficulty'].compareTo(a['difficulty']),
    );

    return wordScores
        .map((e) => e['word'] as String)
        .toList();
  }

  Future<void> _save() async {
    await prefs.setInt('xp', xp);
    await prefs.setInt('level', level);
    await prefs.setInt('streak', streak);
    await prefs.setInt('currentUnit', currentUnit);
    await prefs.setInt('wordsToday', wordsToday);

    await prefs.setStringList(
        'unlockedBadges',
        unlockedBadges);

    await prefs.setStringList(
        'completedSubsections',
        completedSubsections);

    await prefs.setStringList(
      'completedSections',
      completedSections.map((e) => e.toString()).toList(),
    );

    await prefs.setStringList(
      'sectionBadges',
      sectionBadges,
    );
  }
  Future<List<String>> getAllCompletedWords() async {
    List<String> allWords = [];
    for (var key in prefs.getKeys()) {
      if (key.startsWith("word_done_")) {
        final parts = key.split("_");
        if (parts.length >= 5) {
          final word = parts.sublist(4).join("_");
          allWords.add(word);
        }
      }
    }
    return allWords.toSet().toList(); // remove duplicates
  }
}