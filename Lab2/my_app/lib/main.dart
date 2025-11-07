import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Header"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),

              // Heading
              Text(
                "Main Heading",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30),

              // Badges Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BadgeCircle(color: Colors.red, text: "One"),
                  SizedBox(width: 12),
                  BadgeCircle(color: Colors.green, text: "Two"),
                  SizedBox(width: 12),
                  BadgeCircle(color: Colors.blue, text: "Three"),
                ],
              ),

              SizedBox(height: 30),

              // Cards
              CustomCard(
                imageUrl: "https://via.placeholder.com/150",
                description: "This is card number 1",
              ),
              CustomCard(
                imageUrl: "https://via.placeholder.com/150",
                description: "This is card number 2",
              ),
              CustomCard(
                imageUrl: "https://via.placeholder.com/150",
                description: "This is card number 3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Badge Widget
class BadgeCircle extends StatelessWidget {
  final Color color;
  final String text;

  BadgeCircle({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Card Widget
class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String description;

  CustomCard({required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.network(imageUrl, width: 120, height: 120),
            SizedBox(height: 10),
            Text(description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
