import 'package:flutter/material.dart';

Scaffold containerBoxShadow() {
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
            borderRadius: const BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
            border: Border.all(
              width: 5,
              color: Colors.yellow,
            ),
            color: Colors.red,
            boxShadow: const [
              BoxShadow(
                color: Colors.purple,
                offset: Offset(30, 30),
                blurRadius: 8,
              ),
              BoxShadow(
                color: Colors.red,
                offset: Offset(20, 20),
                blurRadius: 8,
              ),
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 8,
              )
            ]),
        height: 200,
        width: 200,
      ),
    ),
  );
}
