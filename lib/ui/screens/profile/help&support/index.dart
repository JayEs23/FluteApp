import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:go_router/go_router.dart';

class HelpAndSuport extends StatefulWidget {
  const HelpAndSuport({super.key});

  @override
  State<HelpAndSuport> createState() => _HelpAndSuportState();
}

class _HelpAndSuportState extends State<HelpAndSuport> {
  bool sendAnEmail = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor:
            sendAnEmail ? Colors.white.withOpacity(0.45) : Colors.white,
        floatingActionButton: GestureDetector(
            onTap: () {
              context.push("/helpsupport/chat");
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: primaryColor, shape: BoxShape.circle),
              child: const Icon(Icons.chat_rounded, color: Colors.white),
            )),
        body: Stack(children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  backNavigation(context),
                  const SizedBox(height: 50),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Help & Support",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20)),
                        const SizedBox(height: 30),
                        MaterialButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              context.push("/helpsupport/callus");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Call us",
                                  style: TextStyle(
                                    color: Color(0XFF707070),
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    size: 16, color: Color(0XFF707070)),
                              ],
                            )),
                        const SizedBox(height: 20),
                        MaterialButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              sendAnEmail = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Send An Email",
                                style: TextStyle(
                                  color: Color(0XFF707070),
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: Color(0XFF707070)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FAQs",
                              style: TextStyle(
                                color: Color(0XFF707070),
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16, color: Color(0XFF707070)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: height * 0.2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: sendAnEmail ? width * 0.9 : 0,
                height: sendAnEmail ? 150 : 0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "lekan@fidemlt.io",
                        style: TextStyle(
                            color: Color(0XFFA76AFC),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              sendAnEmail = false;
                            });
                          },
                          child: const Text("cancel",
                              style: TextStyle(
                                  color: Color(0XFF7F2EEF),
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16)))
                    ]),
              ))
        ]));
  }
}
