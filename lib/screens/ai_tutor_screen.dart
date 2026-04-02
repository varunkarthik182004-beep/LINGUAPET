import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AITutorScreen extends StatefulWidget {
  const AITutorScreen({super.key});

  @override
  State<AITutorScreen> createState() => _AITutorScreenState();
}

class _AITutorScreenState extends State<AITutorScreen> {
  final TextEditingController controller = TextEditingController();

  List<Map<String, String>> messages = [];

  Future<void> sendMessage(String text) async {
    setState(() {
      messages.add({"role": "user", "text": text});
    });

    controller.clear();

    String reply = "";

    try {
      final response = await http.post(
        Uri.parse("https://api.openai.com/v1/chat/completions"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer sk-xxxxxxxxxxxxxxxx",
        },
        body: jsonEncode({
          "model": "gpt-4o-mini",
          "messages": [
            {"role": "system", "content": "You are a Tamil language tutor."},
            {"role": "user", "content": text}
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        reply = data["choices"][0]["message"]["content"];
      } else {
        reply = getLocalReply(text); // ✅ fallback
      }

    } catch (e) {
      reply = getLocalReply(text); // ✅ fallback
    }

    setState(() {
      messages.add({"role": "bot", "text": reply});
    });
  }

  // ✅ ADDED THIS ONLY
  String getLocalReply(String text) {
    text = text.toLowerCase();

    if (text.contains("hungry")) {
      return "நான் பசிக்கிறேன் (Naan pasikkiren)";
    } else if (text.contains("hello")) {
      return "வணக்கம் (Vanakkam)";
    } else if (text.contains("thank")) {
      return "நன்றி (Nandri)";
    } else if (text.contains("name")) {
      return "என் பெயர்... (En peyar...)";
    } else {
      return "Try asking: How to say hello in Tamil?";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AI Tutor")),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];

                return Align(
                  alignment: msg["role"] == "user"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: msg["role"] == "user"
                          ? Colors.blue
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      msg["text"] ?? "",
                      style: TextStyle(
                        color: msg["role"] == "user"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: "Ask something...",
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    sendMessage(controller.text);
                  }
                },
              )
            ],
          )
        ],
      ),
    );
  }
}