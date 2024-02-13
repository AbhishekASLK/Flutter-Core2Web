import 'package:flutter/material.dart';

Scaffold containerColor() {
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
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    ),
  );
}
