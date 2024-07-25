import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String companyName = "Google";
  int empCount = 250;
  @override
  Widget build(BuildContext context) {
    return Company(
      companyName: companyName,
      empCount: empCount,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CompanyData(),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      companyName = 'NVIDIA';
                      empCount++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Change Company',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CompanyData extends StatelessWidget {
  const CompanyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Company.of(context).companyName,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          Company.of(context).empCount.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

class Company extends InheritedWidget {
  final String companyName;
  final int empCount;

  const Company({
    super.key,
    required this.companyName,
    required this.empCount,
    required super.child,
  });

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }

  @override
  bool updateShouldNotify(Company oldWidget) {
    return companyName != oldWidget.companyName;
  }
}
