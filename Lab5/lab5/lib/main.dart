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

  // A helper function to show SnackBar
  void showSnackBar(BuildContext context, String itemName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Tapped on $itemName'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

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
        children: [
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.smartphone),
            title: const Text('Smartphone'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Smartphone'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.laptop),
            title: const Text('Laptop'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Laptop'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.tablet_mac),
            title: const Text('Tablet'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Tablet'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.watch),
            title: const Text('Smartwatch'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Smartwatch'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.headphones),
            title: const Text('Headphones'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Headphones'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.desktop_windows),
            title: const Text('Desktop Computer'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Desktop Computer'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.earbuds),
            title: const Text('Wireless Earbuds'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Wireless Earbuds'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.sports_esports),
            title: const Text('Gaming Console'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Gaming Console'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.tv),
            title: const Text('Smart TV'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Smart TV'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.speaker),
            title: const Text('Bluetooth Speaker'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Bluetooth Speaker'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.battery_charging_full),
            title: const Text('Power Bank'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Power Bank'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.storage),
            title: const Text('Portable Hard Drive'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Portable Hard Drive'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.flight),
            title: const Text('Drone'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Drone'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.camera_alt),
            title: const Text('Digital Camera'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Digital Camera'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.keyboard),
            title: const Text('Keyboard'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Keyboard'),
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            leading: const Icon(Icons.mouse),
            title: const Text('Mouse'),
            trailing: const Icon(Icons.bookmark),
            onTap: () => showSnackBar(context, 'Mouse'),
          ),
        ],
      ),
    );
  }
}
