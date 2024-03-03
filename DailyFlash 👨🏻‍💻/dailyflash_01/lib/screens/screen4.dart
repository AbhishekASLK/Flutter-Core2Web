import 'package:dailyflash_01/screens/screen5.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              width: 5,
              color: Colors.red,
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
