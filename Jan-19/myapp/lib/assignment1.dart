import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.menu),
        ],
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
