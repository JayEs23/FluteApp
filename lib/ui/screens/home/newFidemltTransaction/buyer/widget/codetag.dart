import "package:fidemlt/routes.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

Widget codeTag(String code) {
  return Center(
    child: Container(
        padding: const EdgeInsets.all(50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(width: 1, color: const Color(0XFFEDDFFF)),
          boxShadow: [
            BoxShadow(
              color: Color(0x00000040),
              offset: Offset(0, 8),
              blurRadius: 35,
              spreadRadius: -20,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(code,
                style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 36)),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                gorouter.push("/buyereditransaction");
              },
              child: Image.asset("public/images/copycode.png"),
            )
          ],
        )),
  );
}
