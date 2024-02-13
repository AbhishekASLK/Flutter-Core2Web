// import 'package:container_app/container_color.dart';
// import 'package:container_app/container_padding.dart';
// import 'package:container_app/container_border_radius.dart';
// import 'package:container_app/container_boxshadow.dart';
import 'package:container_app/container_border_radius.dart';
import 'package:container_app/container_boxshadow.dart';
import 'package:container_app/container_gradient.dart';
import 'package:container_app/container_margin.dart';
import 'package:container_app/container_padding.dart';
// import 'package:container_app/container_decoration.dart';
// import 'package:container_app/container_margin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return containerGradient();
  }
}
