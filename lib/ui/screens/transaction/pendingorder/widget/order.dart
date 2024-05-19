import 'package:flutter/material.dart';
import 'package:fidemlt/global/index.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';

Widget orderBox(BuildContext context) {
  return GestureDetector(
      onTap: () {
        context.push('/pendingorderdetail');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0XFFEBEEF1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Apple Iphone XR",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 16)),
                const SizedBox(height: 2.5),
                const Text("Order no: #1700368810",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: Color(0XFF8F9AA3))),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$nairaSymbol 270,000.00",
                    style: const TextStyle(
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 14)),
                Row(
                  children: [
                    Text("Status: ",
                        style: const TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Text("Pending",
                        style: const TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFFFBB43),
                            fontSize: 14)),
                  ],
                ),
                Icon(
                  Icons.arrow_forward,
                  color: primaryColor,
                )
              ],
            )
          ],
        ),
      ));
}
