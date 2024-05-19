import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:fidemlt/ui/widget/bottomnav.dart';
import 'package:fidemlt/global/index.dart';
import '../home/widget/index.dart';
import 'package:go_router/go_router.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  bool showbalance = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: screenWidth,
          child: Image.asset("public/images/topnash.png", fit: BoxFit.cover),
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 90, left: 20, right: 20),
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backNavigation(context),
                  const Text(
                    "Wallet",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Work Sans"),
                  ),
                  const SizedBox()
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              // width: screenWidth,
              // height: 152,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("public/images/homebackcard.png"))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("In Fidelmt",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Colors.white)),
                    const SizedBox(height: 40),
                    const Text("Balance",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "$nairaSymbol${showbalance == true ? "200000" : "*******"}",
                            style: const TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                                color: Colors.white)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                showbalance =
                                    showbalance == true ? false : true;
                              });
                            },
                            child: Image.asset(
                                "public/images/${showbalance == true ? "whiteeye" : "blind"}.png"))
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Actions",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0XFF555555))),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: screenWidth * 0.42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color(0XFF7F2EEF).withOpacity(0.09)),
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Image.asset("public/images/fundwallet.png"),
                                const SizedBox(width: 5),
                                const Text("Fund Wallet",
                                    style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0XFF060606)))
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push("/withdraw");
                        },
                        child: Container(
                            width: screenWidth * 0.42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0XFF7F2EEF).withOpacity(0.09)),
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Image.asset("public/images/withdraw.png"),
                                const SizedBox(width: 5),
                                const Text("Withdraw",
                                    style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0XFF060606)))
                              ],
                            )),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Transaction",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0XFF555555))),
                        MaterialButton(
                            onPressed: () {
                              context.push("/alltransactions");
                            },
                            child: const Text("See all >",
                                style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: primaryColor)))
                      ],
                    ),
                    transactHistory(),
                    transactHistory(),
                  ],
                )),
          ],
        ),
        bottomNavBar(context, position: 2),
      ],
    ));
  }
}
