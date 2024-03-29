import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:go_router/go_router.dart';

class CallUs extends StatefulWidget {
  const CallUs({super.key});

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                  const Text("Call us",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                  const SizedBox(height: 50),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Color(0XFFEEE1FF),
                                shape: BoxShape.circle),
                            child: Image.asset("public/images/callicon.png")),
                        const SizedBox(height: 20),
                        const Text("Hello there\nHow can we help you today?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        const SizedBox(height: 10),
                        const Text(
                            "Our call feature is taking a tea break, but we are always ready to assist you when you reach out via text. Send a message through the button below  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                        const SizedBox(height: 20),
                        const Text("Tap on the number",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                        const SizedBox(height: 20),
                        const Text("+234 901 620 2875",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: primaryColor,
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w600,
                                fontSize: 20)),
                      ],
                    ),
                  )
                ],
              )),
        ]));
  }
}
