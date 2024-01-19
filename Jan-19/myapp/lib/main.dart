import 'package:flutter/material.dart';
import 'package:myapp/assignment1.dart';
// import 'package:myapp/assignment10.dart';
// import 'package:myapp/assignment2.dart';
// import 'package:myapp/assignment3.dart';
// import 'package:myapp/assignment4.dart';
// import 'package:myapp/assignment5.dart';
// import 'package:myapp/assignment6.dart';
// import 'package:myapp/assignment7.dart';
// import 'package:myapp/assignment8.dart';
// import 'package:myapp/assignment9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
    );
  }
}
