import 'package:flutter/material.dart';
import './widget/index.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';

class PendingTransaction extends StatefulWidget {
  const PendingTransaction({super.key});

  @override
  State<PendingTransaction> createState() => _PendingTransactionState();
}

class _PendingTransactionState extends State<PendingTransaction> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          margin: const EdgeInsets.only(top: 50),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backNavigation(context),
                const Text("Pending Transaction",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 16)),
                const SizedBox()
              ],
            ),
            const SizedBox(height: 20),
            !isEmpty
                ? Column(
                    children: [
                      transactHistory(),
                      transactHistory(),
                      transactHistory(),
                      transactHistory(),
                      transactHistory(),
                      transactHistory(),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.all(40),
                    child: Image.asset("public/images/no_notification.png"))
          ]),
        ),
      ),
    );
  }
}
