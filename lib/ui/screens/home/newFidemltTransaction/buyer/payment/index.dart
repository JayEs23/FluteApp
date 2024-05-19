import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';
import './widget/cardform.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';

class BuyerPaymentTransaction extends StatefulWidget {
  const BuyerPaymentTransaction({super.key});

  @override
  State<BuyerPaymentTransaction> createState() =>
      _BuyerPaymentTransactionState();
}

class _BuyerPaymentTransactionState extends State<BuyerPaymentTransaction> {
  int _selectedValue = 1; // Initial selected value

  void _handleRadioValueChanged(int value) {
    setState(() {
      _selectedValue = value;
    });
  }

  bool _isChecked = false; // Initial checked state

  void _handleCheckboxChange(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1200,
            color: secondaryColor,
          ),
          Positioned(
              bottom: 0,
              child: SingleChildScrollView(
                child: Container(
                  height: height - 100,
                  width: width,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 20),
                            GestureDetector(
                                onTap: () {
                                  context.pop();
                                },
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                      "public/images/cancel button.png"),
                                )),
                            const SizedBox(height: 20),
                            const Text(
                              "Choose Payment Method",
                              style: TextStyle(
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Color(0XFF7F2EEF)),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Radio<int>(
                                  value: 1,
                                  groupValue: _selectedValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = value!;
                                    });
                                  },
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "Debit Card",
                                      style: TextStyle(
                                          fontFamily: "Work Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Color(0XFF060606)),
                                    ),
                                    const SizedBox(width: 10),
                                    Image.asset("public/images/card logo.png")
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio<int>(
                                  value: 2,
                                  groupValue: _selectedValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = value!;
                                    });
                                  },
                                ),
                                Image.asset("public/images/paystacklogo.png"),
                              ],
                            ),
                            const SizedBox(height: 20),
                            if (_selectedValue == 1)
                              Column(
                                children: [
                                  BuyerPaymentTransactionForm(context),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value:
                                            _isChecked, // Current checked state
                                        onChanged: (value) {
                                          _handleCheckboxChange(value!);
                                        }, // Callback for changes
                                      ),
                                      const Text(
                                        "I have read and understands the terms and conditions guiding this payment. ",
                                        style: TextStyle(
                                            fontFamily: "Work Sans",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0XFF060606)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomPrimaryButton(
                              onPressed: () {
                                showPaymentWithCard(context);
                              },
                              color: secondaryColor,
                              child: const Text("Pay now",
                                  style: TextStyle(
                                      fontFamily: "Work Sans",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.white)),
                            ),
                            const SizedBox(height: 10)
                          ],
                        )
                      ]),
                ),
              )),
        ],
      ),
    );
  }

  void showPaymentWithCard(BuildContext context) {
    showAlertDialog(context,
        children: [
          Image.asset('public/images/checksuccessful.png'),
          const SizedBox(height: 20),
          const Text("Your account have been\n debited successfully",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20)),
          const SizedBox(height: 20),
        ],
        routes: "home",
        buttontext: "Continue");
  }
}
