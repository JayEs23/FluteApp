import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';

Widget progressLoading(int position) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsets.symmetric(
            vertical: 6, horizontal: position == 0 ? 8 : 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: position == 0 ? primaryColor : fadedPrimaryColor),
      ),
      const SizedBox(width: 5),
      Container(
        padding: EdgeInsets.symmetric(
            vertical: 6, horizontal: position == 1 ? 8 : 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: position == 1 ? primaryColor : fadedPrimaryColor),
      ),
      const SizedBox(width: 5),
      Container(
        padding: EdgeInsets.symmetric(
            vertical: 6, horizontal: position == 2 ? 8 : 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: position == 2 ? primaryColor : fadedPrimaryColor),
      ),
    ],
  );
}
