import 'package:api_demo/api_demo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

dynamic data;
void main() async {
  await getData();
  runApp(const MyApp());
}

Future getData() async {
  var response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/todos'),
  );
  data = jsonDecode(response.body);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: APIDemo(),
    );
  }
}
