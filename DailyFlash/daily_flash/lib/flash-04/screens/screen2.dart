// 2. Create an Elevated button in the Center of the Screen. Decorate the button as
// follows.
// a. The button must be of Circular Shape.
// b. The Size of the button must be (width:200, height: 200).
// c. The button must have a border of color red.

import 'package:daily_flash/flash-04/screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(200, 200)),
            side: MaterialStatePropertyAll(
              BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
          onPressed: () {},
          child: const Text('Press'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Screen3();
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
