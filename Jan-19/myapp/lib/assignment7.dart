import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment 7'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://www.biencaps.com/static/media/shashi-sir.ce188ff3.png',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://www.biencaps.com/static/media/shashi-sir.ce188ff3.png',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://www.biencaps.com/static/media/shashi-sir.ce188ff3.png',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://www.biencaps.com/static/media/shashi-sir.ce188ff3.png',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://www.biencaps.com/static/media/shashi-sir.ce188ff3.png',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
