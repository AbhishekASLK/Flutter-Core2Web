import 'package:flutter/material.dart';

Scaffold containerPadding() {
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
      child: Center(
        child: Container(
          color: Colors.green,
          child: Container(
            // padding: const EdgeInsets.symmetric(
            //   vertical: 20,
            //   horizontal: 20,
            // ),
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
              top: 10,
            ),
            height: 100,
            width: 100,
            child: const SizedBox(
              height: 10,
              width: 10,
              child: Text('Hello'),
            ),
          ),
        ),
      ),
    ),
  );
}
