import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assignment 10',
          style: TextStyle(
              fontSize: 30,
              // fontStyle: FontStyle.italic,
              // fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: GoogleFonts.lato().fontFamily),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.red, width: 20),
            borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(20), bottomEnd: Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
