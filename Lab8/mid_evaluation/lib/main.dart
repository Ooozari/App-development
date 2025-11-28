import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), // light theme
      darkTheme: ThemeData.dark(), // dark theme
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: const Text('Dynamic Theme App')),
        body: Center(
          child: Switch(
            value: isDarkMode,
            onChanged: (val) => setState(() => isDarkMode = val),
          ),
        ),
      ),
    );
  }
}
