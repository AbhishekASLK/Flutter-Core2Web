import 'package:api_demo/main.dart';
import 'package:flutter/material.dart';

class APIDemo extends StatefulWidget {
  const APIDemo({super.key});

  @override
  State<APIDemo> createState() => _APIDemoState();
}

class _APIDemoState extends State<APIDemo> {
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
          return Padding(
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
          );
        },
      ),
    );
  }
}
