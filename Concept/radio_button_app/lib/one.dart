import 'package:flutter/material.dart';

class RadioButtonDemo1 extends StatefulWidget {
  const RadioButtonDemo1({super.key});

  @override
  State<RadioButtonDemo1> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo1> {
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
        title: const Text('Radio Button Demo'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select an option:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Radio(
                  value: 'Option 1',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    handleRadioValueChanged(value);
                  },
                ),
                const Text('Steve Jobs'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Option 2',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    handleRadioValueChanged(value);
                  },
                ),
                const Text('Rid Hoffman'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Option 3',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    handleRadioValueChanged(value);
                  },
                ),
                const Text('Tesla'),
              ],
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
