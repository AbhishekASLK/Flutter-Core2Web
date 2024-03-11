// Create a Container with size(height:200, width:300) now give a shadow to
// the container but the shadow must only be at the top side of the container.

import 'package:daily_flash/flash-03/screens/screen5.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(0, -10),
                spreadRadius: 0.6,
                blurRadius: 7,
              )
            ],
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
