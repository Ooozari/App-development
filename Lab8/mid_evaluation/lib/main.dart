import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.red,
          inactiveTrackColor: Colors.purple.shade200,
          thumbColor: Colors.purple,
          trackHeight: 5,
        ),
      ),
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  State<SliderExample> createState() => _SliderExampleState();
}

enum Status { passed, failed }

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider Example")),
      body: Center(
        child: Slider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          divisions: 100,
          onChanged: (value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ),
    );
  }
}
