import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListDemoPage());
  }
}

class ListDemoPage extends StatefulWidget {
  @override
  _ListDemoPageState createState() => _ListDemoPageState();
}

class _ListDemoPageState extends State<ListDemoPage> {
  List<String> list = ['Car', 'Bike', 'Boat', 'Train'];

  void addSingle() {
    setState(() {
      list.add('Demo');
    });
  }

  void addMultiple() {
    setState(() {
      list.addAll(['Demo1', 'Demo2']);
    });
  }

  void insertAtPosition() {
    setState(() {
      list.insert(1, 'InsertDemo'); // At index 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List UI Example")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(list[index]));
              },
            ),
          ),

          const Divider(),

          // Displaying first and last elements
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("First: ${list.first}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Last: ${list.last}"),
          ),

          const Divider(),

          // Buttons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: addSingle,
                child: const Text("Add One"),
              ),
              ElevatedButton(
                onPressed: addMultiple,
                child: const Text("Add Many"),
              ),
              ElevatedButton(
                onPressed: insertAtPosition,
                child: const Text("Insert"),
              ),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
