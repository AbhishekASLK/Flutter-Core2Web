import 'package:flutter/material.dart';

class IconButtonDemo extends StatefulWidget {
  const IconButtonDemo({super.key});

  @override
  State<IconButtonDemo> createState() => _IconButtonDemoState();
}

class _IconButtonDemoState extends State<IconButtonDemo> {
  String selectedOption = '';

  void handleIconPressed(String value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Icon Button Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select an option:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(
                selectedOption == 'Option 1'
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: selectedOption == 'Option 1' ? Colors.blue : null,
              ),
              onPressed: () {
                handleIconPressed('Option 1');
              },
            ),
            IconButton(
              icon: Icon(
                selectedOption == 'Option 2'
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: selectedOption == 'Option 2' ? Colors.blue : null,
              ),
              onPressed: () {
                handleIconPressed('Option 2');
              },
            ),
            IconButton(
              icon: Icon(
                selectedOption == 'Option 3'
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: selectedOption == 'Option 3' ? Colors.blue : null,
              ),
              onPressed: () {
                handleIconPressed('Option 3');
              },
            ),
            const SizedBox(height: 20.0),
            Text(
              'Selected option: $selectedOption',
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
