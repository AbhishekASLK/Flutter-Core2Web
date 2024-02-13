import 'package:flutter/material.dart';

Scaffold containerGradient() {
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
          color: Colors.amber,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          border: Border.all(
            width: 5,
            color: Colors.blue,
          ),
          gradient: const LinearGradient(
            stops: [0.3, 0.5],
            colors: [Colors.red, Colors.green],
          ),
        ),
        height: 200,
        width: 200,
      ),
    ),
  );
}
