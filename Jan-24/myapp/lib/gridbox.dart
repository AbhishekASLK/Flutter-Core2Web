import 'package:flutter/material.dart';
import 'package:myapp/container.dart';

class GridBoxes extends StatelessWidget {
  const GridBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Boxes'),
          backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                container(Colors.red),
                container(Colors.green),
                container(Colors.black),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                container(Colors.red),
                container(Colors.green),
                container(Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }
}
