import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import "package:go_router/go_router.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';

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

  bool showaccount = false;

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
                height: screenHeight - 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: SingleChildScrollView(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: screenHeight - 150,
                        ),
                        //
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  borderSide: const BorderSide(
                                                      color: Color(0XFFE6E6E6),
                                                      width: 1.0)),
                                              contentPadding:
                                                  const EdgeInsets.fromLTRB(
                                                      20.0, 10.0, 20.0, 10.0),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 3.0))),
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          onChanged: (value) {
                                            final boolvalue = validateForm();
                                            setState(() {
                                              checkIfInputFieldIsComplete =
                                                  boolvalue;
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text("Bank Account",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    )),
                                const SizedBox(height: 10),
                                Wrap(
                                  spacing: 10,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            showaccount = true;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 12),
                                          decoration: BoxDecoration(
                                              color: const Color(0XFF7F2EEF),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Text("Bank Account",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            showaccount = true;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 12),
                                          decoration: BoxDecoration(
                                              color: const Color(0XFF7F2EEF),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Text("Bank Account",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        )),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                if (showaccount)
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0XFFDCDCDC)),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Bank Account",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12)),
                                        Divider(),
                                        Text("Account Name",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                color: Color(0XFF686868))),
                                        const SizedBox(height: 5),
                                        Text("Lekan Kareem",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12)),
                                        const SizedBox(height: 10),
                                        Text("Bank Name",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                color: Color(0XFF686868))),
                                        const SizedBox(height: 5),
                                        Text("Kuda Bank"),
                                        const SizedBox(height: 10),
                                        Text("Account Number",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Color(0XFF686868))),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text("00784566654",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  )
                              ],
                            ),
                            Column(
                              children: [
                                CustomPrimaryButton(
                                  onPressed: () {
                                    showPaymentWithCard(context);
                                  },
                                  color: secondaryColor,
                                  child: const Text("Initialize Payment",
                                      style: TextStyle(
                                          fontFamily: "Work Sans",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.white)),
                                ),
                                const SizedBox(height: 10)
                              ],
                            ),
                          ],
                        ))),
              ),
            )
          ],
        ));
  }

  void showPaymentWithCard(BuildContext context) {
    showAlertDialog(context,
        children: [
          Image.asset('public/images/checksuccessful.png'),
          const SizedBox(height: 20),
          Column(
            children: [
              const Text("Withdrawal successful",
                  style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                  )),
              const SizedBox(height: 5),
              Text("You payment method has\n been added successfully",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF3F3F3F),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
              const SizedBox(height: 20),
            ],
          )
        ],
        routes: "wallet",
        buttontext: "Close");
  }
}
