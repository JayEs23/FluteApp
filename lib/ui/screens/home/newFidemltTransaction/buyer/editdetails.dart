import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'widget/codetag.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';
import "package:go_router/go_router.dart";

class BuyerEditTransaction extends StatefulWidget {
  const BuyerEditTransaction({super.key});

  @override
  State<BuyerEditTransaction> createState() => _BuyerEditTransactionState();
}

class _BuyerEditTransactionState extends State<BuyerEditTransaction> {
  bool confirm = false;
  final _formkey = GlobalKey<FormState>();
  final _productDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  backNavigation(context),
                  // if (!editsuccessful)
                  Form(
                      key: _formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          const Text(
                            "Product Description",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans", fontSize: 16),
                          ),
                          TextFormField(
                            controller: _productDescriptionController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 3.0),
                              ),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Quantity",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans", fontSize: 16),
                          ),
                          TextFormField(
                            controller: _productDescriptionController,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3.0))),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Agreed Price",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans", fontSize: 16),
                          ),
                          TextFormField(
                            controller: _productDescriptionController,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    20.0, 10.0, 20.0, 10.0),
                                border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 3.0))),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Xcrow Amount",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans", fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _productDescriptionController,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 3.0))),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Expected Delivery Time",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Work Sans", fontSize: 16),
                          ),
                          TextFormField(
                            controller: _productDescriptionController,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 3.0))),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 50),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.4,
                                child: CustomPrimaryButton(
                                  onPressed: () {
                                    showEditSuccessDialog(context);
                                  },
                                  color: secondaryColor,
                                  child: const Text(
                                    "Edit/Notify",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              SizedBox(
                                width: width * 0.4,
                                child: CustomPrimaryButton(
                                  onPressed: () {
                                    setState(() {
                                      confirm = true;
                                    });
                                  },
                                  child: const Text(
                                    "Confirm",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(height: 200)
                ],
              ),
            ),
          ),
          if (confirm)
            GestureDetector(
              onTap: () {
                setState(() {
                  confirm = false;
                });
              },
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          if (confirm)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 250,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPrimaryButton(
                      onPressed: () {
                        showPaymentWithFidemltSuccessful(context);
                      },
                      child: const Text("Pay with Fidemlt",
                          style: TextStyle(color: Colors.white)),
                      color: secondaryColor,
                    ),
                    const SizedBox(height: 10),
                    CustomPrimaryButton(
                        onPressed: () {
                          context.push("/buyerpaymenttransaction");
                        },
                        child: const Text("Pay with card/paystack",
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }

  void showEditSuccessDialog(BuildContext context) {
    showAlertDialog(context, children: [
      Image.asset('public/images/editicon.png'),
      const SizedBox(height: 20),
      const Text("Order Edit Successful",
          style: TextStyle(
              fontFamily: "Work Sans",
              fontWeight: FontWeight.w500,
              fontSize: 20)),
      const SizedBox(height: 20),
      const Text(
        "We will notify the vendor\n that you edited the order",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: "Work Sans", fontWeight: FontWeight.w400, fontSize: 13),
      ),
    ]);
  }

  void showPaymentWithFidemltSuccessful(BuildContext context) {
    showAlertDialog(context, children: [
      Image.asset('public/images/checksuccessful.png'),
      const SizedBox(height: 20),
      const Text("Your Fidemly accout\n have been debited",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Work Sans",
              fontWeight: FontWeight.w500,
              fontSize: 20)),
      const SizedBox(height: 20),
    ]);
  }
}
