import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // THEME SETTINGS
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // AppBar background
          foregroundColor: Colors.white, // Title + Icon color
          centerTitle: true, // Center app bar text
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notepad")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Add Notes")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Save Notes")),
          ],
        ),
      ),
    );
  }
}
