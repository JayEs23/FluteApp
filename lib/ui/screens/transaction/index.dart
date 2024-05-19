import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/bottomnav.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:go_router/go_router.dart';

class TransactionHomeScreen extends StatefulWidget {
  const TransactionHomeScreen({super.key});

  @override
  State<TransactionHomeScreen> createState() => _TransactionHomeScreenState();
}

class _TransactionHomeScreenState extends State<TransactionHomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backNavigation(context),
                  const Text("Transaction",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                  const SizedBox()
                ],
              ),
              Center(
                child: Image.asset("public/images/transaction.png"),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  context.push("/pendingorder");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFFFF5EC),
                      ),
                      child: Image.asset("public/images/pendingorder.png"),
                    ),
                    Container(
                      width: width * 0.7,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFFFF5EC),
                      ),
                      child: const Text("Pending Order",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                              color: Color(0XFFFBA95D),
                              fontSize: 16)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.push('/pendingtransaction');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.7,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFF2EAFD),
                      ),
                      child: const Text("Pending Transaction",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF7F2EEF),
                              fontSize: 16)),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFF2EAFD),
                      ),
                      child:
                          Image.asset("public/images/pendingtransaction.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.push('/completedtransaction');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFE7FFE4),
                      ),
                      child:
                          Image.asset("public/images/completedtransaction.png"),
                    ),
                    Container(
                      width: width * 0.7,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFE7FFE4),
                      ),
                      child: const Text("Completed Transaction",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF63F351),
                              fontSize: 16)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.push('/refundedtransaction');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.7,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFFF0606).withOpacity(0.14),
                      ),
                      child: const Text("Refunded Transaction",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                              color: Color(0XFFFF0606),
                              fontSize: 16)),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0XFFFF0606).withOpacity(0.14),
                      ),
                      child: Image.asset(
                        "public/images/refundedtransaction.png",
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavBar(context, position: 1),
      ],
    ));
  }
}
