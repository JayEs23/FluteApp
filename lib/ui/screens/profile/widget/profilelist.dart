import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget profileList(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  return SizedBox(
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          children: [
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.push('/updateprofile');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("public/images/myprofile.png"),
                      const SizedBox(width: 30),
                      const Text("My Profile",
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w400,
                              fontSize: 16))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  context.push('/changepassword');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("public/images/changepassword.png"),
                        const SizedBox(width: 30),
                        const Text("Change Password",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                )),
            const SizedBox(height: 20),
            MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  context.push('/nomanagebankaccount');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("public/images/managebank.png"),
                        const SizedBox(width: 30),
                        const Text("Manage Bank Account",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                )),
            const SizedBox(height: 20),
            MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  context.push('/helpsupport');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("public/images/help.png"),
                        const SizedBox(width: 30),
                        const Text("Help & Support",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                )),
            const SizedBox(height: 20),
            MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  context.push('/about');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("public/images/about.png"),
                        const SizedBox(width: 30),
                        const Text("About Fidemlt",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                )),
            const SizedBox(height: 20),
            MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  context.push('/deleteaccount');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("public/images/deleteaccount.png"),
                        const SizedBox(width: 30),
                        const Text("Delete Account",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                )),
          ],
        ),
      ));
}
