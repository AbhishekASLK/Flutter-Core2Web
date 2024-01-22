import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          'News',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
