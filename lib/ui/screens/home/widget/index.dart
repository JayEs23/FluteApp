import 'package:fidemlt/routes.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/global/index.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:fidemlt/ui/theme/colors.dart';

Widget transactHistory() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color: Colors.white, // Container background color
      boxShadow: [
        const BoxShadow(
          offset: Offset(0, 5), // Same as 0px 5px in CSS
          blurRadius: 35, // Same as 35px in CSS
          spreadRadius: -16, // Same as -16px in CSS
          color: Color(0x00000040), // Same as #00000040 in CSS
        ),
      ],
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Apple Iphone 8 plus",
              style: TextStyle(
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              )),
          Text("$nairaSymbol 10,000",
              style: const TextStyle(
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              )),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("May 25, 2023",
              style: TextStyle(
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w500,
                fontSize: 16,
              )),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: const Color(0XFFFABB19),
                borderRadius: BorderRadius.circular(4)),
            child: const Text("pending",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 9,
                    color: Colors.white)),
          )
        ],
      )
    ]),
  );
}

Widget newFidelmtTransaction(BuildContext context,
    {bool displayHeight = false, required Function removeDisplayHeight}) {
  double width = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: 0,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: displayHeight ? 300 : 0,
      // height: 300,
      width: width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  width: 55,
                  height: 9),
              GestureDetector(
                // padding: EdgeInsets.zero,
                onTap: () {
                  removeDisplayHeight();
                },
                child: Image.asset("public/images/circlecancel.png"),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text("New Fidemlt Transaction",
              style: TextStyle(
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w500,
                fontSize: 17,
              )),
          const Text("What role will you be performing ?",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0XFF8E8E8E))),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: CustomPrimaryButton(
              shadow: true,
              onPressed: () {
                context.push("/buyernewtransaction");
              },
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('public/images/buyertruck.png'),
                  const SizedBox(width: 10),
                  const Text(
                    "Buyer",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: primaryColor),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: CustomPrimaryButton(
              shadow: true,
              onPressed: () {},
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('public/images/Kiosk on Wheels.png'),
                  const SizedBox(width: 10),
                  const Text(
                    "Vendor",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: primaryColor),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    ),
  );
}
