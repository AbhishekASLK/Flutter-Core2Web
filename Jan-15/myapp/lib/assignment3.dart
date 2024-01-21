import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int index = 0;
  String label = '';
  List<String> imageList = [
    'https://pics.craiyon.com/2023-06-09/45d985994b52426a9e56a258a8a42e55.webp',
    'https://pyxis.nymag.com/v1/imgs/4f0/715/3a408c4b9fd021860939b94c47251a521d-wandavision.rsquare.w400.jpg',
    'https://suddhnews.in/content/images/2022/07/Shraddha-Kapoor.jpg',
    'https://www.arabiaweddings.com/sites/default/files/styles/max980/public/tips/2016/05/bollywood_beauty.jpg?itok=GyypDgAm'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text(
          'ImageApp',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.network(
              imageList[index],
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            // Next Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index++;
                  if (index == imageList.length) {
                    index = imageList.length - 1;
                    label = 'last image!';
                  }
                });
              },
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 30,
            ),

            // Reset Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index = 0;
                  label = '';
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
