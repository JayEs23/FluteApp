import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:fidemlt/ui/widget/alert/primary.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

class VerifyEmailCode extends StatefulWidget {
  const VerifyEmailCode({super.key});

  @override
  State<VerifyEmailCode> createState() => _VerifyEmailCodeState();
}

class _VerifyEmailCodeState extends State<VerifyEmailCode> {
  final _formkey = GlobalKey<FormState>();

  final _1Controller = TextEditingController();
  final _2Controller = TextEditingController();
  final _3Controller = TextEditingController();
  final _4Controller = TextEditingController();
  int focus = 1;

  bool _1focusbox = true;
  bool _2focusbox = false;
  bool _3focusbox = false;
  bool _4focusbox = false;

  bool checkIfInputFieldIsComplete = false;
  int _secondsRemaining = 120; // Initial countdown time in seconds
  late Timer _timer;

  List<String> pinValues = ['', '', '', ''];
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  void updatePinValue(int index, String value) {
    setState(() {
      pinValues[index] = value;
      if (value.isNotEmpty) {
        if (index < 3) {
          focusNodes[index + 1].requestFocus();
        }
      }
    });
  }

  bool codeVerified = false;
  bool? isPinComplete() {
    for (String value in pinValues) {
      if (value.isEmpty) {
        return false;
      }
    }
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  bool validateForm() {
    return _formkey.currentState!.validate();
  }

  countdowntimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // setState(() {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        // _timer.cancel(); // Stop the timer when countdown reaches 0
        // countdowntimer();
        setState(() {
          // resendemailcode = true;
          // _secondsRemaining = 120;
        });
      }
      // });
    });
  }

  nextBox() {
    print(focus);
    if (focus < 4) {
      setState(() {
        focus = focus + 1;
      });

      print(focus);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Format the remaining time as minutes:seconds
    String formattedTime =
        '${(_secondsRemaining ~/ 60).toString().padLeft(2, '0')}:${(_secondsRemaining % 60).toString().padLeft(2, '0')}';

    Widget codeBox(TextEditingController controller, int focusnumber) {
      return SizedBox(
        width: width > 230 ? 54 : width * 0.45,
        height: 54,
        child: TextFormField(
          keyboardType: TextInputType.phone,
          obscureText: true,
          autofocus: true,
          focusNode: focusNodes[focusnumber],
          controller: controller,
          decoration: InputDecoration(
              // border: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFD3D3D3), width: 1.0)),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      const BorderSide(color: primaryColor, width: 1.0))),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            final boolvalue = validateForm();

            updatePinValue(focusnumber, value);
            setState(() {
              checkIfInputFieldIsComplete = boolvalue;
            });
            isPinComplete();
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: codeVerified ? Colors.grey : Colors.white,
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
          Positioned(
              left: -30,
              bottom: -30,
              child: Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25), // shadow color
                        spreadRadius: 15, // spread radius
                        blurRadius: 105, // blur radius
                        offset:
                            const Offset(0, -15), // changes position of shadow
                      ),
                    ],
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
                        1.0 // 100%
                      ],
                    )),
              )),
          Positioned(
              top: 70,
              child: Container(
                width: width,
                height: height - 90,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            backNavigation(context),
                            Center(
                                child: Column(
                              children: [
                                Image.asset("public/images/verifymail.png"),
                                const SizedBox(height: 20),
                                const Text(
                                  "Verify your Email?",
                                  style: TextStyle(
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Enter the 4-digit code number sent to\n abdulkareemlekan0@gmail.com",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0XFFB5B5B5),
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                ),
                                const SizedBox(height: 20),
                                Form(
                                    key: _formkey,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        codeBox(_1Controller, 0),
                                        codeBox(_2Controller, 1),
                                        codeBox(_3Controller, 2),
                                        codeBox(_4Controller, 3)
                                      ],
                                    )),
                              ],
                            ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        child: checkIfInputFieldIsComplete
                            ? CustomPrimaryButton(
                                onPressed: () {
                                  setState(() {
                                    codeVerified = true;
                                  });
                                },
                                color: primaryColor,
                                text: "Verify",
                                textcolor: Colors.white,
                              )
                            : CustomPrimaryButton(
                                onPressed: () {},
                                color: const Color(0xFFE8E8E8),
                                text: "Verify",
                              ),
                      ),
                    ]),
              )),
          Positioned(
              left: codeVerified ? 30 : -1000,
              right: codeVerified ? 30 : null,
              top: height * 0.25,
              bottom: height * 0.25,
              child: Container(
                width: width,
                height: 308,
                child: primarySuccessAlert(
                  child: Column(children: [
                    const Text("Successful verified your email",
                        style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                    const SizedBox(height: 20),
                    CustomPrimaryButton(
                      onPressed: () {
                        context.push("/setpassword");
                      },
                      color: primaryColor,
                      text: "Next",
                      textcolor: Colors.white,
                    )
                  ]),
                ),
              )),
        ],
      ),
    );
  }
}
