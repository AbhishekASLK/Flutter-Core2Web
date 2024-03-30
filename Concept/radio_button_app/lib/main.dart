// The radio button itself does not maintain any state. Instead, selecting the
// radio invokes the [onChanged] callback, passing [value] as a parameter. If
// [groupValue] and [value] match, this radio will be selected.

import 'package:flutter/material.dart';
// import 'package:radio_button_app/one.dart';
import 'package:radio_button_app/third.dart';
// import 'package:radio_button_app/two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IconButtonDemo(),
    );
  }
}
