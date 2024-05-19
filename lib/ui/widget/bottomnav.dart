import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';

Widget bottomNavBar(BuildContext context, {required int position}) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [secondaryColor, primaryColor],
              stops: [0.1215, 1.0846],
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                context.push("/home");
              },
              child: Transform.translate(
                offset: position == 0
                    ? const Offset(0.0, -20.0)
                    : const Offset(0.0, 0.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: position == 0 ? Colors.white : null,
                        // shape: BoxShape.circle,
                        borderRadius: position == 0
                            ? const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(20))
                            : BorderRadius.circular(0)),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: position == 0 ? primaryColor : null,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.home,
                            size: 32,
                            color:
                                position == 0 ? Colors.black : Colors.white))),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push("/transaction");
              },
              child: Transform.translate(
                offset: position == 1
                    ? const Offset(0.0, -20.0)
                    : const Offset(0.0, 0.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: position == 1 ? Colors.white : null,
                        // shape: BoxShape.circle,
                        borderRadius: position == 1
                            ? const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(10))
                            : BorderRadius.circular(0)),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: position == 1 ? primaryColor : null,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.account_balance_wallet,
                            size: 32,
                            color:
                                position == 1 ? Colors.black : Colors.white))),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push("/wallet");
              },
              child: Transform.translate(
                offset: position == 2
                    ? const Offset(0.0, -20.0)
                    : const Offset(0.0, 0.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: position == 2 ? Colors.white : null,
                        // shape: BoxShape.circle,
                        borderRadius: position == 2
                            ? const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(20))
                            : BorderRadius.circular(0)),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: position == 2 ? primaryColor : null,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.wallet,
                            size: 32,
                            color:
                                position == 2 ? Colors.black : Colors.white))),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push("/profile");
              },
              child: Transform.translate(
                offset: position == 3
                    ? const Offset(0.0, -20.0)
                    : const Offset(0.0, 0.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: position == 3 ? Colors.white : null,
                        // shape: BoxShape.circle,
                        borderRadius: position == 3
                            ? const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(20))
                            : BorderRadius.circular(0)),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: position == 3 ? primaryColor : null,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.person,
                            size: 32,
                            color:
                                position == 3 ? Colors.black : Colors.white))),
              ),
            ),
          ],
        ),
      ));
}
