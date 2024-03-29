import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Center(
                child: Text(
              "Terms and conditions",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            )),
            const SizedBox(height: 20),
            Text(
                "Lorem ipsum dolor sit amet consectetur. Quis elementum etiam sed bibendum lectus metus aenean sit. Sollicitudin justo urna iaculis interdum facilisis ipsum convallis. Sed dis natoque tristique felis. Amet mauris sit laoreet libero mauris. Et urna ut at commodo. Est gravida ornare lacus neque quis nec aliquam. ",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w400,
                    fontSize: 13)),
            const SizedBox(height: 10),
            Text(
              "1. Definition",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            const SizedBox(height: 5),
            Text(
                "Lorem ipsum dolor sit amet consectetur. Quis elementum etiam sed bibendum lectus metus aenean sit. Sollicitudin justo urna iaculis interdum facilisis ipsum convallis. Sed dis natoque tristique felis. Amet mauris sit laoreet libero mauris. Et urna ut at commodo. Est gravida ornare lacus neque quis nec aliquam. ",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w400,
                    fontSize: 13)),
            const SizedBox(height: 10),
            Text(
              "2. Acceptance of Terms",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            const SizedBox(height: 5),
            Text(
                "Lorem ipsum dolor sit amet consectetur. Quis elementum etiam sed bibendum lectus metus aenean sit. Sollicitudin justo urna iaculis interdum facilisis ipsum convallis. Sed dis natoque tristique felis. Amet mauris sit laoreet libero mauris. Et urna ut at commodo. Est gravida ornare lacus neque quis nec aliquam. ",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w400,
                    fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
