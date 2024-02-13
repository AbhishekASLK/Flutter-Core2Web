import 'package:flutter/material.dart';

Scaffold containerMargin() {
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
        margin:
            const EdgeInsets.only(left: 120, right: 30, bottom: 40, top: 100),
        color: Colors.red,
        height: 200,
        width: 200,
      ),
    ),
  );
}
