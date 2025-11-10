import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DemoPage());
  }
}

class DemoPage extends StatelessWidget {
  launchURL() {
    Uri.parse('https://flutter.dev');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: launchURL,
          child: Text('Show Flutter homepage'),
        ),
      ),
    );
  }
}
