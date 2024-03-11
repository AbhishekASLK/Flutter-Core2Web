import 'package:daily_flash/homescreen.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
            border: Border.all(
              width: 5,
              color: Colors.red,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Thank you',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.green,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.restore,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }));
        },
        child: const Icon(
          Icons.skip_next_outlined,
          size: 30,
        ),
      ),
    );
  }
}
