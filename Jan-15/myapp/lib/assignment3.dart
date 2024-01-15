import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;
  final List<String> imageList = [
    'https://www.biencaps.com/static/media/shashi-sir.ce188ff3.png',
    'https://www.biencaps.com/static/media/pramod-sir.c5ece1cb.png',
    'https://www.biencaps.com/static/media/shriyash-sir.8007e498.png'
  ];

  void showNextImage() {
    setState(() {
      if (selectedIndex! < imageList.length - 1) {
        selectedIndex = selectedIndex! + 1;
      } else {
        selectedIndex = 0;
      }
    });
  }

  String str = 'Next';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: Text(str),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
