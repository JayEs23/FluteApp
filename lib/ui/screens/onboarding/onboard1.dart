import 'package:flutter/material.dart';
import "package:fidemlt/ui/theme/colors.dart";
import './widget/onboardprogress.dart';
import './widget/bottombutton.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({Key? key}) : super(key: key);
  @override
  _Onboard1State createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent unnecessary resizing
      body: Stack(
        children: [
          Positioned(
              right: -30,
              top: -30,
              child: Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin:
                            Alignment.topCenter, // Direction is bottom to top
                        end: Alignment.bottomCenter,
                        colors: [
                          primaryColor.withOpacity(0.03), // Start color
                          secondaryColor.withOpacity(0.03), // End color
                        ],
                        stops: [
                          0.3676, // 36.76%
                          1.0 // 100%
                        ])),
              )),
          Positioned(
              left: -30,
              bottom: -30,
              child: Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // Direction is bottom to top
                      end: Alignment.bottomCenter,
                      colors: [
                        primaryColor.withOpacity(0.03), // Start color
                        secondaryColor.withOpacity(0.03), // End color
                      ],
                      stops: [
                        0.3676, // 36.76%
                        1.0, // 100%
                      ],
                    )),
              )),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('public/images/onboardbankcard.png'),
                  const SizedBox(height: 20),
                  Container(
                    width: 50,
                    child: progressLoading(1),
                  ),
                  const SizedBox(height: 20),
                  const Text("Scam free online payments",
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                  const SizedBox(height: 20),
                  const Text(
                      "Say goodbye to fraud and hello \nto secure payments",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: fadedTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15)),
                  const SizedBox(height: 50),
                  buttonButton(next: 'onboard2', context: context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
