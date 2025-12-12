import 'package:flutter/material.dart';

class AddNotesScreen extends StatefulWidget {
  const AddNotesScreen({super.key});

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  final TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Notes")),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // TEXT FIELD
            TextField(
              controller: notesController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Enter notes here...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            // ADD & HOME BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ADD BUTTON
                ElevatedButton(
                  onPressed: () {
                    String note = notesController.text.trim();

                    if (note.isNotEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Note Added: $note")),
                      );
                    }
                  },
                  child: const Text("Add"),
                ),

                // HOME BUTTON
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Home"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
