import 'package:flutter/material.dart';

Widget backNavigation(BuildContext context,
    {Color color = const Color(0xFFF4EEEE)}) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: const Color(0xFFF4EEEE)),
            color: color),
        child: Image.asset('public/images/back.png')),
  );
}
