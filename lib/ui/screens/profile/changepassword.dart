import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formkey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();

  bool checkIfInputFieldIsComplete = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool validateForm() {
      return _formkey.currentState!.validate();
    }

    return Scaffold(
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
                child: Container(
              width: width,
              margin: const EdgeInsets.only(top: 50),
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
                            "Change Password",
                            style: TextStyle(
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                                "public/images/changepasswordimage.png"),
                          ),
                          const SizedBox(height: 30),
                          Form(
                              key: _formkey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Current Password",
                                      style: TextStyle(
                                          color: Color(0XFF8F9AA3),
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14)),
                                  TextFormField(
                                    controller: _currentPasswordController,
                                    keyboardType: TextInputType.number,
                                    obscureText: true,
                                    autofocus: true,
                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0XFF8F9AA3),
                                                width: 3.0))),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    // validator: (text) {
                                    //   if (text == null || text.isEmpty) {
                                    //     return 'Phone number can\'t be empty';
                                    //   }
                                    //   if (text.length < 11 ||
                                    //       text.length > 11) {
                                    //     return "Please enter a valid phone number";
                                    //   }
                                    // },
                                    onChanged: (value) {
                                      final boolvalue = validateForm();
                                      setState(() {
                                        checkIfInputFieldIsComplete = boolvalue;
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 20),
                                  const Text("New Password",
                                      style: TextStyle(
                                          color: Color(0XFF8F9AA3),
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14)),
                                  TextFormField(
                                    controller: _newPasswordController,
                                    keyboardType: TextInputType.number,
                                    autofocus: false,
                                    obscureText: true,

                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0XFF8F9AA3),
                                                width: 3.0))),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    // validator: (text) {
                                    //   if (text == null || text.isEmpty) {
                                    //     return 'Phone number can\'t be empty';
                                    //   }
                                    //   if (text.length < 11 ||
                                    //       text.length > 11) {
                                    //     return "Please enter a valid phone number";
                                    //   }
                                    // },
                                    onChanged: (value) {
                                      final boolvalue = validateForm();
                                      setState(() {
                                        checkIfInputFieldIsComplete = boolvalue;
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 20),
                                  const Text("Confirm New Password",
                                      style: TextStyle(
                                          color: Color(0XFF8F9AA3),
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14)),
                                  TextFormField(
                                    controller: _confirmNewPasswordController,
                                    keyboardType: TextInputType.number,
                                    autofocus: false,
                                    obscureText: true,

                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0XFF8F9AA3),
                                                width: 3.0))),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    // validator: (text) {
                                    //   if (text == null || text.isEmpty) {
                                    //     return 'Phone number can\'t be empty';
                                    //   }
                                    //   if (text.length < 11 ||
                                    //       text.length > 11) {
                                    //     return "Please enter a valid phone number";
                                    //   }
                                    // },
                                    onChanged: (value) {
                                      final boolvalue = validateForm();
                                      setState(() {
                                        checkIfInputFieldIsComplete = boolvalue;
                                      });
                                    },
                                  ),
                                ],
                              )),
                          const SizedBox(height: 50),
                          SizedBox(
                            child: checkIfInputFieldIsComplete
                                ? CustomPrimaryButton(
                                    onPressed: () {
                                      // context.push('/verifyphone');
                                    },
                                    color: primaryColor,
                                    text: "Save",
                                    textcolor: Colors.white,
                                  )
                                : CustomPrimaryButton(
                                    onPressed: () {},
                                    color: const Color(0xFFE8E8E8),
                                    text: "Save",
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ))));
  }
}
