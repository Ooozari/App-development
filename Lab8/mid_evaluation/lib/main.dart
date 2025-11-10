import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const BoxDecorationExample());
  }
}

class BoxDecorationExample extends StatelessWidget {
  const BoxDecorationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BoxDecoration Example")),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6), // Background color
            image: const DecorationImage(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
              fit: BoxFit.cover, // Cover the entire box
            ),
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(2),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.red,
                blurRadius: 10,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
