import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:fidemlt/ui/widget/alert/primary.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final _formkey = GlobalKey<FormState>();

  final _1Controller = TextEditingController();
  final _2Controller = TextEditingController();
  final _3Controller = TextEditingController();
  final _4Controller = TextEditingController();
  final _5Controller = TextEditingController();
  final _6Controller = TextEditingController();

  int focus = 1;

  bool _1focusbox = true;
  bool _2focusbox = false;
  bool _3focusbox = false;
  bool _4focusbox = false;

  bool checkIfInputFieldIsComplete = false;
  int _secondsRemaining = 120; // Initial countdown time in seconds
  late Timer _timer;

  List<String> pinValues = ['', '', '', '', '', ''];
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  void updatePinValue(int index, String value) {
    setState(() {
      pinValues[index] = value;
      if (value.isNotEmpty) {
        if (index < 5) {
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
    if (focus < 6) {
      setState(() {
        focus = focus + 1;
      });
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
        width: width > 230 ? 30 : width * 0.30,
        height: 54,
        child: TextFormField(
          style: const TextStyle(fontSize: 14),
          keyboardType: TextInputType.phone,
          obscureText: true,
          autofocus: true,
          focusNode: focusNodes[focusnumber],
          controller: controller,
          decoration: const InputDecoration(
              // border: InputBorder.none,
              filled: true,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3.0)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 3.0))),
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
                                const SizedBox(height: 50),
                                const Text(
                                  "Set a Password",
                                  style: TextStyle(
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
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
                                        codeBox(_4Controller, 3),
                                        codeBox(_5Controller, 4),
                                        codeBox(_6Controller, 5)
                                      ],
                                    )),
                                const SizedBox(height: 20),
                                const Text(
                                    "Your password must be atleast 6 characters!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0XFFB5B5B5),
                                        fontFamily: 'Work Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11))
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
                                  context.push('/enterpasswordagain');
                                },
                                color: primaryColor,
                                text: "Continue",
                                textcolor: Colors.white,
                              )
                            : CustomPrimaryButton(
                                onPressed: () {},
                                color: const Color(0xFFE8E8E8),
                                text: "Continue",
                              ),
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
}
