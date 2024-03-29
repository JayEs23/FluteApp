import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class NoManageBankAccount extends StatefulWidget {
  const NoManageBankAccount({super.key});

  @override
  State<NoManageBankAccount> createState() => _NoManageBankAccountState();
}

class _NoManageBankAccountState extends State<NoManageBankAccount> {
  bool checkIfInputFieldIsComplete = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
                child: Container(
              width: width,
              height: height,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        backNavigation(context),
                        const SizedBox(height: 50),
                        const Text(
                          "Manage Bank Accounts",
                          style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child:
                                Image.asset('public/images/piggy-bank 1.png'),
                          ),
                          const SizedBox(height: 30),
                          const Align(
                              alignment: Alignment.center,
                              child: Text(
                                  "You do not have any bank account \ncurrently added.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13))),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: CustomPrimaryButton(
                        onPressed: () {
                          context.push('/managebankaccount/addbank');
                        },
                        color: primaryColor,
                        text: "Add Bank",
                        textcolor: Colors.white,
                      ),
                    ),
                  ]),
            ))));
  }
}
