import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget LogOutAlert(BuildContext context,
    {bool showlogoutbox = false, required Function removewidget}) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  return Positioned(
      bottom: showlogoutbox ? screenHeight * 0.5 : -2000000,
      left: screenWidth * 0.05,
      right: screenWidth * 0.05,
      child: Container(
        width: screenWidth * 0.9,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Logout Confirmation",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              "Are you sure you want to logout?",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      removewidget();
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                          color: Color(0XFF6C6C6C),
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
                TextButton(
                    onPressed: () {
                      context.go("/signin");
                    },
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                          color: Color(0XFFF90F0F),
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
              ],
            )
          ],
        ),
      ));
}
