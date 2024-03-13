import 'package:flutter/material.dart';
import 'dart:async';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:go_router/go_router.dart';
import 'package:fidemlt/ui/theme/apptheme.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      context.go('/onboard');
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundGradient = Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter, // Direction is bottom to top
        end: Alignment.bottomCenter,
        colors: [
          primaryColor, // Start color
          secondaryColor, // End color
        ],
        stops: [
          0.3676, // 36.76%
          1.0, // 100%
        ],
      )),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent unnecessary resizing
      body: Stack(
        children: [
          backgroundGradient, // Use the container as the background
          Center(
            child: Image.asset(
              'public/images/logotext.png', // Path to your image asset
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
              // You can also adjust other properties of the Image widget as needed
            ),
          ),
        ],
      ),
    );
  }
}
