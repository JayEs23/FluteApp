import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/bottomnav.dart';
import 'package:fidemlt/global/index.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import './widget/index.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showbalance = false;
  bool displayNewFidelmtTransactionScreen = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    removeDisplayHeight() {
      if (displayNewFidelmtTransactionScreen == true) {
        setState(() {
          displayNewFidelmtTransactionScreen = false;
        });
      }
    }

    return Scaffold(
        body: Stack(
      children: [
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              "public/images/Male profile avatar.jpeg"),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Welcome",
                                  style: TextStyle(
                                      fontFamily: "Work Sans",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                const SizedBox(width: 2),
                                const Text("Lekan",
                                    style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                              ],
                            ),
                            const Text(
                              'How\'s the weather in your region',
                              style: TextStyle(
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9),
                            )
                          ],
                        )
                      ],
                    ),
                    MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          context.push("/notification");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child:
                              Image.asset("public/images/notificationbell.png"),
                        ))
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: width * 0.45,
                        height: 95,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color(0XFFE6DBF4),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Happy Client",
                                style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                            const SizedBox(height: 4),
                            const Text("200",
                                style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30))
                          ],
                        )),
                    Container(
                        width: width * 0.45,
                        height: 95,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: const Color(0XFFCBB2EB),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Order delivered",
                                style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.white)),
                            const SizedBox(height: 4),
                            const Text("200",
                                style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    color: Colors.white))
                          ],
                        ))
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: width,
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
                Column(
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
                              width: width * 0.45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFF7F2EEF)
                                      .withOpacity(0.09)),
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
                              width: width * 0.45,
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
                    CustomPrimaryButton(
                      onPressed: () {
                        setState(() {
                          displayNewFidelmtTransactionScreen = true;
                        });
                      },
                      child: const Text("+ New Fidemlt Transaction",
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white)),
                    )
                  ],
                ),
                Column(
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
                )
              ],
            )),
        bottomNavBar(context, position: 0),
        newFidelmtTransaction(context,
            displayHeight: displayNewFidelmtTransactionScreen,
            removeDisplayHeight: removeDisplayHeight)
      ],
    ));
  }
}
