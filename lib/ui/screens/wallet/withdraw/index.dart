import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import "package:go_router/go_router.dart";

class WithDrawScreen extends StatefulWidget {
  const WithDrawScreen({super.key});

  @override
  State<WithDrawScreen> createState() => _WithDrawScreenState();
}

class _WithDrawScreenState extends State<WithDrawScreen> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  bool checkIfInputFieldIsComplete = false;

  bool validateForm() {
    return _formkey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: secondaryColor,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: screenWidth,
                height: screenHeight * 0.85,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                  "public/images/cancel button.png"),
                            ))),
                    const Text("Withdraw cash",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 22)),
                    const Text("How much do you want to withdraw",
                        style: TextStyle(
                            color: Color(0XFF717171),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                    const SizedBox(height: 20),
                    Form(
                        key: _formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Amount (NGN)",
                                style: TextStyle(
                                    color: Color(0XFF717171),
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                            const SizedBox(height: 5),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _nameController,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Color(0XFFE6E6E6),
                                          width: 1.0)),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0))),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              onChanged: (value) {
                                final boolvalue = validateForm();
                                setState(() {
                                  checkIfInputFieldIsComplete = boolvalue;
                                });
                              },
                            ),
                            const SizedBox(height: 20),
                          ],
                        )),
                    const Text("How do you want to get paid?",
                        style: TextStyle(
                            color: Color(0XFF717171),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                    const SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          context.push("/choosebankaccount");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          decoration: BoxDecoration(
                              color: const Color(0XFF7F2EEF),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Bank Account",
                              style: TextStyle(color: Colors.white)),
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
