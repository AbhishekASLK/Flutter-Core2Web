import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();
  List tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            // ================= Sized Box ===============
            const SizedBox(
              height: 20,
            ),
            // ================= Text Field ===============
            SizedBox(
              width: 300,
              child: TextField(
                controller: _textController,
                onSubmitted: (value) {
                  tasks.add(_textController.text);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ================= ListView.separated ===============
            SizedBox(
              width: 300,
              height: 500,
              child: ListView.separated(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      tasks[index],
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _textController.clear();
        });
      }),
    );
  }
}
