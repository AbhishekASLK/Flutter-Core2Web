import 'package:flutter/material.dart';

class CricketInfo extends StatefulWidget {
  const CricketInfo({super.key});

  @override
  State<CricketInfo> createState() => _CricketInfoState();
}

class _CricketInfoState extends State<CricketInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Information'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Text(
                  'Test Players',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/cricket.jpeg'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Virat Kohli'), Text('Age: 30')],
                ),
                Image.asset('assets/images/cricket.jpeg'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('MS DHONI'), Text('Age: 30')],
                ),
                Image.asset('assets/images/cricket.jpeg'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('KL Rahul'), Text('Age: 30')],
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'T20 Players',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/cricket.jpeg'),
                Image.asset('assets/images/cricket.jpeg'),
                Image.asset('assets/images/cricket.jpeg'),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 50,
              color: Colors.red,
            ),
            Column(
              children: [
                const Text(
                  'One-Day Players',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/cricket.jpeg'),
                Image.asset('assets/images/cricket.jpeg'),
                Image.asset('assets/images/cricket.jpeg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
