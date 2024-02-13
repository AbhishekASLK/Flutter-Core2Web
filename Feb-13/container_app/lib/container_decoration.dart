import 'package:flutter/material.dart';

Scaffold containerDecoration() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,
      title: const Text(
        'Container',
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      centerTitle: true,
    ),
    body: Center(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: Colors.yellow,
            ),
            color: Colors.red),
        height: 200,
        width: 200,
      ),
    ),
  );
}
