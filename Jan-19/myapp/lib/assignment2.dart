import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Snapchat',
          textAlign: TextAlign.center,
        ),
        actions: const [
          Icon(Icons.search),
        ],
      ),
    );
  }
}
