import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import './widget/order.dart';

class PendingOrder extends StatefulWidget {
  const PendingOrder({super.key});

  @override
  State<PendingOrder> createState() => _PendingOrderState();
}

class _PendingOrderState extends State<PendingOrder> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backNavigation(context),
                  const Text("Pending Order",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                  const SizedBox()
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  !isEmpty
                      ? orderBox(context)
                      : Image.asset('public/images/nopendingorder.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
