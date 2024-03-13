import 'package:flutter/material.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class Onboard3 extends StatefulWidget {
  const Onboard3({Key? key}) : super(key: key);
  @override
  _Onboard3State createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3> {
  bool displayAuthwidget = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          displayAuthwidget ? Colors.white.withOpacity(0.8) : Colors.white,
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
          GestureDetector(
            onTap: () {
              setState(() {
                displayAuthwidget = false;
              });
            },
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('public/images/onboardthank.png'),
                    const SizedBox(height: 50),
                    const Text("Peace of Mind with \nEvery Purchase",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                    const SizedBox(height: 20),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: CustomPrimaryButton(
                          onPressed: () {
                            setState(() {
                              displayAuthwidget = true;
                            });
                          },
                          child: const Text(
                            "Let's get started",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    const SizedBox(height: 20),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: CustomPrimaryButton(
                          color: const Color(0xFFEADFFB),
                          onPressed: () {
                            context.push("/signin");
                          },
                          text: "I already have an accounts",
                        )),
                    const SizedBox(height: 30),
                    const Text("By continuing, you agree to Fidemlt’s",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: fadedTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 11)),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Text("Terms of Service",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 11)),
                        ),
                        const SizedBox(width: 2),
                        const Text("and",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: fadedTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11)),
                        const SizedBox(width: 2),
                        GestureDetector(
                          onTap: () {},
                          child: const Text("Privacy Policy",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 11)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: displayAuthwidget ? 300 : 0,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 10),
                  Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )),
                      width: 55,
                      height: 9),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      context.push("/signup");
                    },
                    child: const Text("Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 19)),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: CustomPrimaryButton(
                      shadow: true,
                      onPressed: () {},
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('public/images/facebooklogo.png'),
                          const SizedBox(width: 10),
                          const Text(
                            "Sign up with facebook",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: CustomPrimaryButton(
                      shadow: true,
                      onPressed: () {},
                      color: const Color(0xFFF3EAFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('public/images/instagramlogo.png'),
                          const SizedBox(width: 10),
                          const Text(
                            "Sign up with Instagram",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: fadedTextColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 10)),
                        const SizedBox(width: 3),
                        GestureDetector(
                          onTap: () {
                            context.go("/signin");
                          },
                          child: const Text("Log In",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
