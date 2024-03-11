import 'package:daily_flash/flash-02/screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.orange,
            border: Border(
              left: BorderSide(
                color: Colors.black,
                width: 5,
              ),
            ),
          ),
          child: const Text('Iron Man'),
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
