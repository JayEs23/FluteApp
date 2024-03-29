import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import "package:fidemlt/ui/theme/colors.dart";

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  void radiofunc(Object? a) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    backNavigation(context),
                    const SizedBox(height: 50),
                    const Text("Delete Account",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                    const SizedBox(height: 10),
                    const Text(
                        "Kindly select a reason for deleting your account to help us serve you better next time",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Radio(
                          value: "",
                          groupValue: {},
                          onChanged: radiofunc,
                        ),
                        const SizedBox(width: 5),
                        const Text("I have a new account on Fidemlt",
                            style: TextStyle(
                                color: Color(0XFF717171),
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 12))
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: "", groupValue: {}, onChanged: radiofunc),
                        const SizedBox(width: 5),
                        const Text("I am no more interested in this service",
                            style: TextStyle(
                                color: Color(0XFF717171),
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 12))
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: "", groupValue: {}, onChanged: radiofunc),
                        const SizedBox(width: 5),
                        const Text("Other",
                            style: TextStyle(
                                color: Color(0XFF717171),
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),
              CustomPrimaryButton(
                  onPressed: () {},
                  color: const Color(0XFFFF0000).withOpacity(0.1),
                  child: const Text("Delete Account",
                      style: TextStyle(
                          color: Color(0XFFFF0000),
                          fontWeight: FontWeight.w500,
                          fontSize: 15)))
            ],
          )),
    );
  }
}
