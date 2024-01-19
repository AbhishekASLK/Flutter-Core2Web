import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment 5'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/shashi_sir.png',
              width: 150,
              height: 150,
            ),
            Image.asset(
              'assets/images/girl.jpg',
              width: 150,
              height: 150,
            ),
            Image.asset(
              'assets/images/tree.jpg',
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
