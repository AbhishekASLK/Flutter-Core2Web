import 'package:dailyflash_02/screens/screen4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                20,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const Screen4();
            }),
          );
        },
        child: const Icon(
          Icons.skip_next_outlined,
          size: 30,
        ),
      ),
    );
  }
}
