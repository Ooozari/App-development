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
      body: Container(
        width: 800,
        height: 800,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(height: 90, width: 90, color: Colors.red),
            Container(height: 90, width: 90, color: Colors.green),
            Container(height: 90, width: 90, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
