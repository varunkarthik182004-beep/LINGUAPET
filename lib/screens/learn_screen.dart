import 'package:flutter/material.dart';
import 'package:linguapet/services/progress_service.dart';
import 'package:linguapet/data/beginner_units.dart';
import 'package:linguapet/screens/unit_screen.dart';
import 'package:linguapet/screens/unit_map_screen.dart';
import 'package:linguapet/screens/smart_practice_screen.dart';
import 'package:linguapet/screens/ai_tutor_screen.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen>
    with SingleTickerProviderStateMixin {

  final ProgressService progress = ProgressService();
  bool isLoaded = false;

  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat(reverse: true);

    initProgress();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> initProgress() async {
    await progress.init();
    if (mounted) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoaded) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    String petMood;
    if (progress.level < 3) {
      petMood = "🐣";
    } else if (progress.level < 6) {
      petMood = "🐶";
    } else if (progress.level < 10) {
      petMood = "🦊";
    } else {
      petMood = "🐉";
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [

              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: CircularProgressIndicator(
                          value: (progress.xp % 100) / 100,
                          strokeWidth: 6,
                          backgroundColor: Colors.grey.shade300,
                          valueColor: const AlwaysStoppedAnimation(Colors.blue),
                        ),
                      ),
                      Text(
                        petMood,
                        style: const TextStyle(fontSize: 32),
                      ),
                    ],
                  ),

                  const SizedBox(width: 12),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Level ${progress.level}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'XP: ${progress.xp}',
                        style: const TextStyle(color: Colors.grey),
                      ),

                      Row(
                        children: [
                          progress.streak > 0
                              ? ScaleTransition(
                                  scale: _scaleAnimation,
                                  child: Text(
                                    '🔥',
                                    style: TextStyle(
                                      fontSize: 20 +
                                          (progress.streak * 2),
                                    ),
                                  ),
                                )
                              : const Text(
                                  '🔥',
                                  style: TextStyle(fontSize: 20),
                                ),
                          const SizedBox(width: 6),
                          Text(
                            'Streak: ${progress.streak}',
                            style: const TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Text(
                        'Current Unit: ${progress.currentUnit}',
                        style: const TextStyle(color: Colors.grey),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Daily Goal",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      SizedBox(
                        width: 180,
                        child: LinearProgressIndicator(
                          value: ((progress.wordsToday + progress.sentencesToday) / 20)
                              .clamp(0.0, 1.0),
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "Achievements",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Wrap(
                        spacing: 8,
                        children: progress.unlockedBadges.map((badge) {

                          String emoji = "🏅";
                          String label = "";

                          if (badge == "first_word") {
                            emoji = "🌱";
                            label = "First Word";
                          } else if (badge == "streak_7") {
                            emoji = "🔥";
                            label = "7 Day Streak";
                          } else if (badge == "level_5") {
                            emoji = "🧠";
                            label = "Level 5";
                          } else if (badge == "unit_5") {
                            emoji = "📘";
                            label = "5 Units";
                          } else if (badge == "xp_500") {
                            emoji = "💎";
                            label = "500 XP";
                          }

                          return Chip(
                            label: Text("$emoji $label"),
                          );

                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                'Learning Tiers',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 16),

              // ✅ UPDATED UI (ONLY CHANGE)
              Row(
                children: [

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SmartPracticeScreen(
                              section: "Basic Greetings",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.psychology, size: 28),
                            SizedBox(height: 8),
                            Text(
                              "Smart Practice",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text("Revise weak words"),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AITutorScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.smart_toy, size: 28),
                            SizedBox(height: 8),
                            Text(
                              "AI Tutor",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text("Ask anything"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              _buildTierCard(
                tier: Tier.beginner,
                title: "Beginner (Unit 1–10)",
                emoji: "🌱",
              ),
              _buildTierCard(
                tier: Tier.elementary,
                title: "Elementary (Unit 11–20)",
                emoji: "🌿",
              ),
              _buildTierCard(
                tier: Tier.intermediate,
                title: "Intermediate (Unit 21–30)",
                emoji: "🌳",
              ),
              _buildTierCard(
                tier: Tier.upper,
                title: "Upper Intermediate (Unit 31–40)",
                emoji: "🦅",
              ),
              _buildTierCard(
                tier: Tier.advanced,
                title: "Advanced (Unit 41–50)",
                emoji: "🐉",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTierCard({
    required Tier tier,
    required String title,
    required String emoji,
  }) {
    final bool unlocked = progress.isTierUnlocked(tier);

    return Card(
      color: unlocked ? Colors.white : Colors.grey.shade200,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Text(
          emoji,
          style: const TextStyle(fontSize: 28),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: unlocked ? Colors.black : Colors.grey,
          ),
        ),
        trailing: unlocked
            ? const Icon(Icons.arrow_forward_ios)
            : const Icon(Icons.lock, color: Colors.grey),
        onTap: unlocked
            ? () async {
                if (tier == Tier.beginner) {

                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => UnitMapScreen(unit: beginnerUnits[0]),
                    ),
                  );

                  await progress.init();
                  setState(() {});
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$title coming soon'),
                    ),
                  );
                }
              }
            : null,
      ),
    );
  }
}