// 1. Create a Container in the Center of the Screen with size(width: 300,
// height: 300) and display an image in the center of the Container. Apply
// appropriate padding to the container.

import 'package:daily_flash/flash-03/screens/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          padding: const EdgeInsets.all(30),
          height: 300,
          width: 300,
          child: Image.network(
            'https://www.jansatta.com/wp-content/uploads/2023/06/AI-Hollywood-Actress-as-Sadhvi-6.jpg',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Screen2();
          }));
        },
        child: const Icon(
          Icons.skip_next_outlined,
          size: 30,
        ),
      ),
    );
  }
}
