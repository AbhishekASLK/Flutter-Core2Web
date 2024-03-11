import 'package:daily_flash/flash-02/screens/screen5.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 10, top: 10),
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 126, 184, 231),
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                20,
              ),
              bottomRight: Radius.circular(
                20,
              ),
            ),
          ),
          child: const Text('Abhishek'),
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
