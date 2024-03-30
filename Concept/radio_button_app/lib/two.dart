import 'package:flutter/material.dart';

class RadioButtonDemo2 extends StatefulWidget {
  const RadioButtonDemo2({super.key});

  @override
  State<RadioButtonDemo2> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo2> {
  String? selectedOption = '';

  void handleRadioValueChanged(String? value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Radio Button Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Select an option:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: const Row(
                children: [
                  Icon(Icons.school),
                ],
              ),
              value: 'College',
              groupValue: selectedOption,
              onChanged: (value) {
                handleRadioValueChanged(value);
              },
            ),
            RadioListTile(
              title: const Row(
                children: [
                  Icon(Icons.business),
                ],
              ),
              value: 'Business',
              groupValue: selectedOption,
              onChanged: (value) {
                handleRadioValueChanged(value);
              },
            ),
            RadioListTile(
              title: const Row(
                children: [
                  Icon(Icons.person),
                ],
              ),
              value: 'Personal',
              groupValue: selectedOption,
              onChanged: (value) {
                handleRadioValueChanged(value);
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
