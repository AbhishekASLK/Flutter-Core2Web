import 'package:flutter/material.dart';
import 'package:portfolio_app/decoration.dart';
import 'package:portfolio_app/style.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Portfolio App',
        ),
        backgroundColor: Colors.orange,
        leading: const Icon(
          Icons.person,
        ),
      ),
      body: (index != 0)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // If Else in widgets
                  if (index >= 1)
                    Row(
                      children: [
                        Text(
                          'Name: ',
                          style: style,
                        ),
                        Text(
                          'Abhishek Bhosle',
                          style: style,
                        ),
                      ],
                    )
                  else
                    Container(
                      height: 20,
                    ),
                  (index >= 2)
                      ? Container(
                          height: 150,
                          width: double.infinity,
                          decoration: boxDecoration,
                          child: Image.asset(
                            'assets/images/profile.png',
                            height: 150,
                            width: 150,
                          ),
                        )
                      : Container(
                          height: 150,
                        ),
                  (index >= 3)
                      ? Row(
                          children: [
                            Text(
                              'College: ',
                              style: style,
                            ),
                            Text(
                              'ZCOER',
                              style: style,
                            ),
                          ],
                        )
                      : Container(),
                  (index >= 4)
                      ? Container(
                          height: 150,
                          width: double.infinity,
                          decoration: boxDecoration,
                          child: Image.asset('assets/images/zeal_college.png'),
                        )
                      : Container(
                          height: 150,
                        ),
                  (index >= 5)
                      ? Row(
                          children: [
                            Text(
                              'Dream Company: ',
                              style: style,
                            ),
                            Text(
                              'OpenAI',
                              style: style,
                            ),
                          ],
                        )
                      : Container(),
                  (index >= 6)
                      ? Container(
                          height: 150,
                          width: double.infinity,
                          decoration: boxDecoration,
                          child: Image.asset('assets/images/openai.png'),
                        )
                      : Container(
                          height: 150,
                        ),
                ],
              ),
            )
          : Center(
              child: Text(
                'Welcome to Portfolio App',
                style: style,
              ),
            ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            onPressed: () {
              if (index < 6) {
                setState(() {
                  index++;
                });
              }
            },
            child: const Icon(
              Icons.arrow_forward,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            onPressed: () {
              setState(() {
                if (index >= 1) {
                  index--;
                }
              });
            },
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
