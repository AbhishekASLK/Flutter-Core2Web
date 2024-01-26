import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flag extends StatefulWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  State<Flag> createState() => _Flag();
}

class _Flag extends State<Flag> with TickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(200, 20),
                      ),
                      color: Color(0xFFFF671F),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: -40,
                    child: Transform.rotate(
                      angle: 360 / 3,
                      child: Container(
                        alignment: Alignment.center,
                        width: 230,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 77, 13, 8),
                        ),
                        child: Text(
                          'JAY HIND',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    RotationTransition(
                      turns: Tween(begin: 0.0, end: 3.0)
                          .animate(_rotationController),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFF06038D),
                          ),
                        ),
                        child: Stack(
                          children: List.generate(
                            24,
                            (index) => Positioned.fill(
                              child: Transform.rotate(
                                angle: 2 * pi / 24 * index,
                                child: const Divider(
                                  color: Colors.black,
                                  thickness: 2.0,
                                  height: 10.0,
                                  indent: 6.0,
                                  endIndent: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(200, 20),
                  ),
                  color: Color(0xFF046A38),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
