import 'package:flutter/material.dart';

class DreamCompany extends StatefulWidget {
  const DreamCompany({super.key});
  @override
  State createState() => _DreamCompany();
}

class _DreamCompany extends State {
  bool flag = false;
  String name = '';
  String company = '';
  String location = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dream Company'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: "Name",
                ),
                onSubmitted: (value) {
                  name = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: "Company",
                ),
                onSubmitted: (value) {
                  company = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: "Location",
                ),
                onSubmitted: (value) {
                  location = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    flag = true;
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.green,
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                child: const Text("Submit"),
              ),
              (flag)
                  ? Column(
                      children: [
                        Text('Name: $name'),
                        Text('Company: $company'),
                        Text('Location: $location'),
                      ],
                    )
                  : const Column(),
            ],
          )),
    );
  }
}
