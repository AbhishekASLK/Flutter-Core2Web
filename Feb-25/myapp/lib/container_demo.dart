import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.pink,
                blurRadius: 70,
                offset: Offset(0, 100),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                110,
              ),
              child: Image.network(
                'https://assets.vogue.com/photos/60eef8c728198051b1f04558/1:1/w_1475,h_1475,c_limit/tgd3260_101_comp_v007_35250b79%20(2).jpeg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
