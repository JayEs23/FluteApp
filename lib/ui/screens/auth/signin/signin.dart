import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';
import 'package:fidemlt/ui/widget/alert/primary.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  bool checkIfInputFieldIsComplete = false;
  bool signInSuccessfully = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool validateForm() {
      return _formkey.currentState!.validate();
    }

    return Scaffold(
      backgroundColor: signInSuccessfully
          ? const Color(0XFF7777778C).withOpacity(0.55)
          : Colors.white,
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
                            const Text(
                              "Sign in",
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Your e-mail address or cell phone number",
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
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            hintText: 'Email',
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
                                        onChanged: (value) {
                                          final boolvalue = validateForm();
                                          setState(() {
                                            checkIfInputFieldIsComplete =
                                                boolvalue;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Material(
                                      elevation: 12.0,
                                      borderRadius: BorderRadius.circular(8),
                                      shadowColor:
                                          Colors.black.withOpacity(0.75),
                                      child: TextFormField(
                                        obscureText: true,
                                        controller: _passwordController,
                                        decoration: InputDecoration(
                                            suffixIcon: Image.asset(
                                                "public/images/eye.png"),
                                            hintText: 'Password',
                                            fillColor: Colors.white,
                                            filled: true,
                                            errorStyle: TextStyle(),
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
                                        //     return 'Last Name can\'t be empty';
                                        //   }
                                        //   if (text.length < 2) {
                                        //     return "Please enter a valid Last name";
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
                                    const SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          context
                                              .go("/resetpassword/enterphone");
                                        },
                                        child: const Text("Reset password",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: primaryColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10)),
                                      ),
                                    ),
                                    const SizedBox(height: 70),
                                    SizedBox(
                                      child: checkIfInputFieldIsComplete
                                          ? CustomPrimaryButton(
                                              onPressed: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                setState(() {
                                                  signInSuccessfully = true;
                                                });
                                              },
                                              color: primaryColor,
                                              text: "Sign in",
                                              textcolor: Colors.white,
                                            )
                                          : CustomPrimaryButton(
                                              onPressed: () {},
                                              color: const Color(0xFFE8E8E8),
                                              text: "Sign in",
                                            ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("I don't have an account",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: fadedTextColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10)),
                                        const SizedBox(width: 3),
                                        GestureDetector(
                                          onTap: () {
                                            context.go("/signup");
                                          },
                                          child: const Text("Sign Up",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ]),
              )),
          Positioned(
              left: signInSuccessfully ? 30 : -1000,
              right: signInSuccessfully ? 30 : null,
              top: height * 0.25,
              bottom: height * 0.25,
              child: Container(
                width: width,
                height: 308,
                child: primarySuccessAlert(
                  child: Column(children: [
                    const Text("Welcome Back",
                        style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                    const SizedBox(height: 20),
                    const Text("You are good to go on the Fidemlt App.",
                        style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 11)),
                    const SizedBox(height: 20),
                    CustomPrimaryButton(
                      onPressed: () {
                        context.push("/home");
                      },
                      color: primaryColor,
                      text: "Proceed to dashboard",
                      textcolor: Colors.white,
                    )
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}
