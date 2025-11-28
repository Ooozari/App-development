import 'package:flutter/material.dart';

void main() {
  runApp(const GestureLabApp());
}

class GestureLabApp extends StatelessWidget {
  const GestureLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gesture Class",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 4,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ---------------------------------------------------------------
// HOME SCREEN (Navigation to all task screens)
// ---------------------------------------------------------------

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gesture Class")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            buildNavButton(
              context,
              "Task 3: Background Color Gestures",
              const Task3Screen(),
            ),
            buildNavButton(
              context,
              "Task 4: Icon Change Gestures",
              const Task4Screen(),
            ),
            buildNavButton(
              context,
              "Task 5: Gesture Counter",
              const Task5Screen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavButton(BuildContext context, String title, Widget screen) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
        },
        child: Text(title, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

// ---------------------------------------------------------------
// TASK 3 – Background Color Change with Gestures
// ---------------------------------------------------------------

class Task3Screen extends StatefulWidget {
  const Task3Screen({super.key});

  @override
  State<Task3Screen> createState() => _Task3ScreenState();
}

class _Task3ScreenState extends State<Task3Screen> {
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 3")),
      body: GestureDetector(
        onTap: () {
          setState(() => bgColor = Colors.yellow);
        },
        onDoubleTap: () {
          setState(() => bgColor = Colors.green);
        },
        onLongPress: () {
          setState(() => bgColor = Colors.red);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: bgColor,
          child: const Center(
            child: Text(
              "Tap / Double Tap / Long Press",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------
// TASK 4 – Icon Change with Gestures
// ---------------------------------------------------------------

class Task4Screen extends StatefulWidget {
  const Task4Screen({super.key});

  @override
  State<Task4Screen> createState() => _Task4ScreenState();
}

class _Task4ScreenState extends State<Task4Screen> {
  IconData icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 4")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() => icon = Icons.star);
          },
          onDoubleTap: () {
            setState(() => icon = Icons.lock);
          },
          onLongPress: () {
            setState(() => icon = Icons.thumb_up);
          },
          child: Icon(icon, size: 120, color: Colors.blue),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------
// TASK 5 – Gesture Controlled Counter
// ---------------------------------------------------------------

class Task5Screen extends StatefulWidget {
  const Task5Screen({super.key});

  @override
  State<Task5Screen> createState() => _Task5ScreenState();
}

class _Task5ScreenState extends State<Task5Screen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 5")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() => counter += 1);
          },
          onDoubleTap: () {
            setState(() => counter += 5);
          },
          onLongPress: () {
            setState(() => counter = 0);
          },
          child: Text(
            "$counter",
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
