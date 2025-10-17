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
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  void addToCart(BuildContext context, String item) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$item added to card"),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  final List<Map<String, dynamic>> products = const [
    {
      'icon': Icons.smartphone,
      'name': 'Smartphone',
      'description': 'Powerful Android device with 8GB RAM',
      'price': '\$799',
    },
    {
      'icon': Icons.laptop,
      'name': 'Laptop',
      'description': 'High performance for work and gaming',
      'price': '\$1,299',
    },
    {
      'icon': Icons.watch,
      'name': 'Smartwatch',
      'description': 'Stay connected on the go',
      'price': '\$299',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lab - 5',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: products.map((product) {
          return Card(
            elevation: 15,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Icon(
                product['icon'],
                color: Colors.blueAccent,
                size: 40,
              ),
              title: Text(
                product['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(product['description']),
              trailing: Text(
                product['price'],
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () => addToCart(context, product['name']),
            ),
          );
        }).toList(),
      ),
    );
  }
}
