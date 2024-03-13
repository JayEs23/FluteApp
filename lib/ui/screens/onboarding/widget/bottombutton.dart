import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';

Widget buttonButton({required String next, required BuildContext context}) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.push('/onboard3');
            },
            child: const Text("Skip",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: fadedTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
          ),
          MaterialButton(
            onPressed: () {
              context.push('/$next');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(5)),
              child: const Icon(Icons.navigate_next,
                  color: Colors.white, size: 15),
            ),
          )
        ],
      ));
}
