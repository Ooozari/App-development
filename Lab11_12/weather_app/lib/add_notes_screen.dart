import 'package:flutter/material.dart';
import 'main.dart';

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
            TextField(
              controller: notesController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Enter your notes...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    String note = notesController.text.trim();

                    if (note.isNotEmpty) {
                      allNotes.add(note);
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Note Added")));
                    }
                  },
                  child: const Text("Add"),
                ),

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
