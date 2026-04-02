import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linguapet/screens/learn_screen.dart'; // ✅ CHANGED
import 'package:linguapet/services/progress_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final progressService = ProgressService();

  @override
  void initState() {
    super.initState();
    progressService.init(); // ✅ keep as it is
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to LinguaPet 🎉",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text(
              user?.email ?? "",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),

            // ✅ ONLY CHANGE IS HERE
            ElevatedButton(
              child: const Text("Start Learning"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LearnScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}