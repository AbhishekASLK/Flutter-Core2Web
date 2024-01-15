import 'package:flutter/material.dart';
import 'package:myapp/assignment1.dart';
import 'package:myapp/assignment2.dart';
import 'package:myapp/assignment3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment3(),
    );
  }
}
