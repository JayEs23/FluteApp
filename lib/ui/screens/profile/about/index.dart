import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:go_router/go_router.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool followusonsocials = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor:
            followusonsocials ? Colors.white.withOpacity(0.45) : Colors.white,
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
                        const Text("About Fidemlt",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20)),
                        const SizedBox(height: 30),
                        MaterialButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              followusonsocials = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Follow Us on Social Media",
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
                        MaterialButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              context.push("/about/terms&conditions");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "View Our Terms & Conditions",
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
                      ],
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: height * 0.2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: followusonsocials ? width * 0.9 : 0,
                height: followusonsocials ? 150 : 0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Facebook",
                        style: TextStyle(
                            color: Color(0XFFA76AFC),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Instagram",
                        style: TextStyle(
                            color: Color(0XFFA76AFC),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Twitter",
                        style: TextStyle(
                            color: Color(0XFFA76AFC),
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              followusonsocials = false;
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
