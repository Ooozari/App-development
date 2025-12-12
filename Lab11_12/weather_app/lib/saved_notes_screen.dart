import 'package:flutter/material.dart';
import 'main.dart';

class SavedNotesScreen extends StatelessWidget {
  const SavedNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Saved Notes")),

      body: allNotes.isEmpty
          ? const Center(
              child: Text("No Notes Saved", style: TextStyle(fontSize: 18)),
            )
          : ListView.builder(
              itemCount: allNotes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.note),
                  title: Text(allNotes[index]),
                );
              },
            ),
    );
  }
}
