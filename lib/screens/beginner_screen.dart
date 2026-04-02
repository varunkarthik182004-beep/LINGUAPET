import 'package:flutter/material.dart';
import 'package:linguapet/data/beginner_units.dart';
import 'unit_map_screen.dart';

class BeginnerScreen extends StatelessWidget {
  const BeginnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Beginner Course")),
      body: ListView.builder(
        itemCount: beginnerUnits.length,
        itemBuilder: (context, index) {

          final unit = beginnerUnits[index];

          return ListTile(
            title: Text("Unit ${unit.number}: ${unit.title}"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => UnitMapScreen(unit: unit),
                ),
              );
            },
          );
        },
      ),
    );
  }
}