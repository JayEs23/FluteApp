import 'package:flutter/material.dart';
import 'package:fidemlt/helper/global.dart';

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
      const SizedBox(height: 2),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Order no: #1700368810",
              style: TextStyle(
                color: Color(0xff8F9AA3),
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w500,
                fontSize: 11,
              )),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: const Color(0XFF00FF6A),
                borderRadius: BorderRadius.circular(4)),
            child: const Text("Complete",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Colors.white)),
          )
        ],
      ),
      const SizedBox(height: 10),
      const Text("May 25, 2023",
          style: TextStyle(
            fontFamily: "Work Sans",
            fontWeight: FontWeight.w500,
            fontSize: 16,
          )),
    ]),
  );
}
