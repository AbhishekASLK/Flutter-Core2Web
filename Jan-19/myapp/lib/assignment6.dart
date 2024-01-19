import 'package:flutter/material.dart';
import 'package:myapp/container.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment 6'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
              container,
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
