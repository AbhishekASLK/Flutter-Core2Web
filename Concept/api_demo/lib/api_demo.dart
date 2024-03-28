import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIDemo extends StatefulWidget {
  const APIDemo({super.key});

  @override
  State<APIDemo> createState() => _APIDemoState();
}

class _APIDemoState extends State<APIDemo> {
  int id = -1;
  String title = '';
  bool completed = false;
  dynamic data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );
    // print(response.body);
    data = jsonDecode(response.body);
    // print(data);
    // print(data[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'API Demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (context, index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('UserID: ${data[index]['id']}'),
                    SizedBox(
                      width: 400,
                      child: Text('Title: ${data[index]['title']}'),
                    ),
                    Text('Completed: ${data[index]['completed']}')
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
