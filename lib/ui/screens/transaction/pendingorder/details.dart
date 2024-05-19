import 'package:fidemlt/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';

class PendingOrderDetails extends StatelessWidget {
  const PendingOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backNavigation(context),
                const Text("Pending Order",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
                const SizedBox()
              ],
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Apple Iphone XR",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFBB43),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Pending",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Order no: #1700368810",
                  style: TextStyle(
                      color: Color(0xFF8F9AA3),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                const Text(
                  "Product Description",
                  style: TextStyle(
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Lorem ipsum dolor sit amet consectetur.",
                  style: TextStyle(
                      color: Color(0XFF656565),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Qty: 2",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      "$nairaSymbol 270,000.00",
                      style: const TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  "Order date: 16th Apr, 2024",
                  style: TextStyle(
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
