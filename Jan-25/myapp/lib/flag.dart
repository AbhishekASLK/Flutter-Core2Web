import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jay Hind'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.orange,
                ),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.white,
                  child: Image.asset('assets/chakra.png'),
                ),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.green,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    name = 'Bharat Mata Ki Jay';
                  },
                  child: const Text('Press'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    name = '';
                  },
                  child: const Text('Reset'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
