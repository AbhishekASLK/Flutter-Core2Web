import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ephemeral State'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Course(courseName: 'Java'),
            SizedBox(
              height: 50,
            ),
            Course(courseName: 'Flutter'),
          ],
        ),
      ),
    );
  }
}

class Course extends StatefulWidget {
  final String courseName;
  const Course({super.key, required this.courseName});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(widget.courseName),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          alignment: Alignment.center,
          height: 64,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.purple.shade200,
          ),
          child: Text('$counter'),
        ),
      ],
    );
  }
}
