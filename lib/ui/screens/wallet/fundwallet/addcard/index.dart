import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';
import 'widget/cardform.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: 1200,
            color: secondaryColor,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height - 100,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: height - 100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                  "public/images/cancel button.png"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Add New Card",
                            style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Color(0XFF060606),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                                "public/svg/atmmastercard.svg",
                                fit: BoxFit.cover),
                          ),
                          const SizedBox(height: 20),
                          AddCardForm(context),
                          const SizedBox(height: 20),
                        ],
                      ),
                      Column(
                        children: [
                          CustomPrimaryButton(
                            onPressed: () {
                              showPaymentWithCard(context);
                            },
                            color: secondaryColor,
                            child: const Text(
                              "Add Card",
                              style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showPaymentWithCard(BuildContext context) {
    showAlertDialog(context,
        children: [
          Image.asset('public/images/checksuccessful.png'),
          const SizedBox(height: 20),
          Column(
            children: [
              Text("Add Card Successful",
                  style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                  )),
              const SizedBox(height: 5),
              Text("You have successful\n add new card",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF3F3F3F),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
              const SizedBox(height: 20),
            ],
          )
        ],
        routes: "wallet",
        buttontext: "Close");
  }
}
