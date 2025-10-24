import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Xylophone());
  }
}

class Xylophone extends StatelessWidget {
  Xylophone({super.key});

  final AudioCache obj = AudioCache();
  void play1() {
    obj.play('note1.wav');
  }

  void play2() {
    obj.play('note2.wav');
  }

  void play3() {
    obj.play('note3.wav');
  }

  void play4() {
    obj.play('note4.wav');
  }

  void play5() {
    obj.play('note5.wav');
  }

  void play6() {
    obj.play('note6.wav');
  }

  void play7() {
    obj.play('note7.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xylophone',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: play1,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              onPressed: play2,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
              ),
              onPressed: play3,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.orange),
              ),
              onPressed: play4,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
              ),
              onPressed: play5,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal),
              ),
              onPressed: play6,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.yellow),
              ),
              onPressed: play7,
              child: Text("Click", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
