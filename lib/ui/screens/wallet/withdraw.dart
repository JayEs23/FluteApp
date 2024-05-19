import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';

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
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                                color: Color(0XFFECECEC),
                                shape: BoxShape.circle),
                            child: const Text(
                              "X",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        )),
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
                                  // border: InputBorder.none,
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
                            fontSize: 14))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
