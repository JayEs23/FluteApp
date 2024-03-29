import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/bottomnav.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        bottomNavBar(context, position: 0),
      ],
    ));
  }
}
