import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class BVNVerify extends StatefulWidget {
  const BVNVerify({super.key});

  @override
  State<BVNVerify> createState() => _BVNVerifyState();
}

class _BVNVerifyState extends State<BVNVerify> {
  final _formkey = GlobalKey<FormState>();
  final _bvnController = TextEditingController();

  bool checkIfInputFieldIsComplete = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool validateForm() {
      return _formkey.currentState!.validate();
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
                            const SizedBox(height: 20),
                            const Text(
                              "One last thing. We need to verify your BVN ",
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "To keep Fidemlt safe from everyone, we require BVN verification",
                              style: TextStyle(
                                  color: Color(0XFFB5B5B5),
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                            const SizedBox(height: 10),
                            Form(
                                key: _formkey,
                                child: Column(
                                  children: [
                                    Material(
                                      elevation: 12.0,
                                      borderRadius: BorderRadius.circular(8),
                                      shadowColor:
                                          Colors.black.withOpacity(0.75),
                                      child: TextFormField(
                                        controller: _bvnController,
                                        decoration: InputDecoration(
                                            hintText: 'bvn',
                                            fillColor: Colors.white,
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 3.0)),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    20.0, 10.0, 20.0, 10.0),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 3.0))),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        // validator: (text) {
                                        //   if (text == null || text.isEmpty) {
                                        //     return 'First name can\'t be empty';
                                        //   }
                                        //   if (text.length < 2) {
                                        //     return "Please enter a valid first name";
                                        //   }
                                        //   if (text.length > 49) {
                                        //     return 'Name can\t be more than 50';
                                        //   }
                                        // },
                                        onChanged: (value) {
                                          final boolvalue = validateForm();
                                          setState(() {
                                            checkIfInputFieldIsComplete =
                                                boolvalue;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: checkIfInputFieldIsComplete
                            ? CustomPrimaryButton(
                                onPressed: () {
                                  context.push('/finishsignup');
                                },
                                color: primaryColor,
                                text: "Next",
                                textcolor: Colors.white,
                              )
                            : CustomPrimaryButton(
                                onPressed: () {},
                                color: const Color(0xFFE8E8E8),
                                text: "Next",
                              ),
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}
