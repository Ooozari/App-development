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
        title: const Text(
          'Lab - 5',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: const [
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.smartphone),
            title: Text('Smartphone'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.laptop),
            title: Text('Laptop'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.tablet_mac),
            title: Text('Tablet'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.watch),
            title: Text('Smartwatch'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.headphones),
            title: Text('Headphones'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.desktop_windows),
            title: Text('Desktop Computer'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.earbuds),
            title: Text('Wireless Earbuds'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.sports_esports),
            title: Text('Gaming Console'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.tv),
            title: Text('Smart TV'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.speaker),
            title: Text('Bluetooth Speaker'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.battery_charging_full),
            title: Text('Power Bank'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.storage),
            title: Text('Portable Hard Drive'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.flight),
            title: Text('Drone'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.camera_alt),
            title: Text('Digital Camera'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.keyboard),
            title: Text('Keyboard'),
            trailing: Icon(Icons.bookmark),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: Icon(Icons.mouse),
            title: Text('Mouse'),
            trailing: Icon(Icons.bookmark),
          ),
        ],
      ),
    );
  }
}
