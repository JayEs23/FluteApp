import 'package:fidemlt/routes.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";
import 'package:fidemlt/helper/global.dart';

class TransactHistory extends StatefulWidget {
  final String buyerSellerTransaction;

  const TransactHistory({Key? key, required this.buyerSellerTransaction})
      : super(key: key);

  @override
  _TransactHistoryState createState() => _TransactHistoryState();
}

class _TransactHistoryState extends State<TransactHistory> {
  bool showActionButtons = false;

  void toggleActionButtons() {
    setState(() {
      showActionButtons = !showActionButtons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleActionButtons,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 35,
              spreadRadius: -16,
              color: Color(0x00000040),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Apple Iphone 8 plus",
                  style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "$nairaSymbol 10,000",
                  style: const TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Order no: #1700368810",
                  style: TextStyle(
                    color: Color(0xff8F9AA3),
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFABB19),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    "Pending",
                    style: TextStyle(
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "May 25, 2023",
              style: TextStyle(
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            if (showActionButtons)
              if (widget.buyerSellerTransaction == "seller")
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          gorouter.push(
                              "/pendingsellertransactionuploaddeliverystatus");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0XFFB13AF8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "Upload Delivery Status",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          gorouter.push("/pendingsellertransactioncancelled");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "Cancel Transaction",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          gorouter
                              .push("/pendingbuyertransactionvalidatepackage");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0XFFB13AF8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "Validate Package",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          gorouter
                              .push("/pendingbuyertransactionmissingpackage");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "Missing Package",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
          ],
        ),
      ),
    );
  }
}
