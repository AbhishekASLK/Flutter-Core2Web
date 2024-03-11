// Create a Container in the Center of the screen, now In the background of
// the Container display an Image (the image can be an asset or network
// image ). Also, display text in the center of the Container.
// (Refer to The below image the name “Core2web” is displayed in the
// center of the container and the image is displayed in the background)

import 'package:daily_flash/flash-03/screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://www.jansatta.com/wp-content/uploads/2023/06/AI-Hollywood-Actress-as-Sadhvi-6.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: const Center(
            child: Text(
              'Core2Web',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Screen3();
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
