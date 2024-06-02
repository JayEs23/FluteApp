import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import "package:go_router/go_router.dart";
import 'package:flutter_svg/flutter_svg.dart';

class ChooseBankAccount extends StatefulWidget {
  const ChooseBankAccount({super.key});

  @override
  State<ChooseBankAccount> createState() => _ChooseBankAccountState();
}

class _ChooseBankAccountState extends State<ChooseBankAccount> {
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
                    const Text("Choose Bank Account",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 22)),
                    const Text("Where do you want to get paid",
                        style: TextStyle(
                            color: Color(0XFF717171),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        context.push("/wallet/addbank");
                      },
                      child: Container(
                        width: screenWidth,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1, color: Color(0XFFABABAB))),
                        child: Column(children: [
                          SvgPicture.asset("public/svg/add button.svg"),
                          const SizedBox(height: 20),
                          const Text(
                            "Add a new Bank Acccount Recipient",
                            style: TextStyle(
                                color: Color(0XFF717171),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ]),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: screenWidth,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1, color: Color(0XFFABABAB))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Union Bank of Nigeria",
                                    style: TextStyle(
                                        color: Color(0XFFB13AF8),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  SvgPicture.asset(
                                      "public/svg/bankinstitute.svg")
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "0078456654",
                                    style: TextStyle(
                                        color: Color(0XFF3A3A3A),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(height: 7),
                                  const Text(
                                    "Lekan Kazeem",
                                    style: TextStyle(
                                        color: Color(0XFF717171),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
