import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab 4 Appbar',
          style: TextStyle(
            color: const Color.fromARGB(255, 15, 15, 15),
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 145, 202, 205),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // EdgeInsets.all
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
              child: const Text(
                "Padding: EdgeInsets.all(20)",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // EdgeInsets.symmetric
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Container(
              color: Colors.green,
              child: const Text(
                "Padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // EdgeInsets.only
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 40),
            child: Container(
              color: Colors.blue,
              child: const Text(
                "Padding: EdgeInsets.only(left: 15, top: 40)",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
