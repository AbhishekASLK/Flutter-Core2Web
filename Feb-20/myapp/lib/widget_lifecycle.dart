import 'package:flutter/material.dart';

class WidgetLifeCycle extends StatefulWidget {
  const WidgetLifeCycle({super.key});

  @override
  State<WidgetLifeCycle> createState() {
    print('createState() called');
    return _WidgetLifeCycleState();
  }
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
  @override
  void initState() {
    super.initState();
    print('initState() called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies() called');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate() called');
    dispose();
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose() called');
  }

  bool flag = false;
  @override
  Widget build(BuildContext context) {
    print('build() called');
    deactivate();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: (flag) ? Colors.green : Colors.red,
              ),
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    flag = !flag;
                  });
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
