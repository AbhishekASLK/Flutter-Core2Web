import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int countGlobal = 0;
  List<int> arr = [11, 555, 145, 2];
  String label = 'Count';
  int index = 0;
  int countPalindrome = 0;
  void checkPalindrome() {
    label = 'Palindrome Numbers';
    for (int i = 0; i < arr.length; i++) {
      int temp = arr[i];
      int num = arr[i];
      int rev = 0;
      while (temp != 0) {
        rev = rev * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (rev == num) {
        setState(() {
          countPalindrome++;
        });
      }
    }
    countGlobal = countPalindrome;
    countPalindrome = 0;
  }

  int countArmstrong = 0;
  void armstrongNumber() {
    label = 'Armstrong Numbers';
    for (int i = 0; i < arr.length; i++) {
      int temp = arr[i];
      int digitCount = 0;
      //count digit
      while (temp != 0) {
        digitCount++;
        temp = temp ~/ 10;
      }
      temp = arr[i];
      int sum = 0;
      while (temp != 0) {
        int rem = temp % 10;
        int prod = 1;
        for (int i = 0; i < digitCount; i++) {
          prod *= rem;
        }
        sum += prod;
        temp = temp ~/ 10;
      }
      if (sum == arr[i]) {
        setState(() {
          countArmstrong++;
        });
      }
    }
    countGlobal = countArmstrong;
    countArmstrong = 0;
  }

  int countStrong = 0;
  void strongNumber() {
    label = 'Strong Numbers';
    for (int i = 0; i < arr.length; i++) {
      int temp = arr[i];
      int sum = 0;
      while (temp != 0) {
        int rem = temp % 10;
        // finding factorial of rem
        int fact = 1;
        for (int i = 1; i <= rem; i++) {
          fact *= i;
        }
        sum += fact;
        temp ~/= 10;
      }
      if (sum == arr[i]) {
        setState(() {
          countStrong++;
        });
      }
    }
    countGlobal = countStrong;
    countStrong = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Core2web'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.blueAccent,
                  width: 80,
                  height: 80,
                  child: Text(
                    '${arr[0]}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 118, 139, 26),
                  width: 80,
                  height: 80,
                  child: Text(
                    '${arr[1]}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 204, 123, 24),
                  width: 80,
                  height: 80,
                  child: Text(
                    '${arr[2]}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 231, 11, 11),
                  width: 80,
                  height: 80,
                  child: Text(
                    '${arr[3]}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$label: $countGlobal',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: checkPalindrome,
              child: const Text("Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: armstrongNumber,
              child: const Text("Armstrong"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: strongNumber,
              child: const Text("Strong Number"),
            ),
          ],
        ),
      ),
    );
  }
}
