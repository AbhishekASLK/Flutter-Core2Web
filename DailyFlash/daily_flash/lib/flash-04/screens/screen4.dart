// 4. Add a floating action button on the screen and when we hover over the
// button the color of the button must become orange.

import 'package:daily_flash/flash-04/screens/screen5.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          child: MouseRegion(
            onEnter: (event) {
              setState(() {
                flag = true;
              });
            },
            onExit: (event) {
              setState(() {
                flag = false;
              });
            },
            child: FloatingActionButton(
              backgroundColor: (flag) ? Colors.green : null,
              onPressed: () {},
              child: const Text('Hover on me'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Screen5();
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
