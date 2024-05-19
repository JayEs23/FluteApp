import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'widget/codetag.dart';

class BuyerNewTransaction extends StatefulWidget {
  const BuyerNewTransaction({super.key});

  @override
  State<BuyerNewTransaction> createState() => _BuyerNewTransactionState();
}

class _BuyerNewTransactionState extends State<BuyerNewTransaction> {
  bool showcodetag = false;
  final _formkey = GlobalKey<FormState>();
  final _productDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backNavigation(context),
                !showcodetag
                    ? Form(
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
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _productDescriptionController,
                              // minLines: 1,
                              maxLines: 5,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0)),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0))),
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
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _productDescriptionController,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0)),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
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
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _productDescriptionController,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0)),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
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
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0)),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
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
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _productDescriptionController,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0)),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3.0))),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              onChanged: (value) {},
                            ),
                            const SizedBox(height: 30),
                            CustomPrimaryButton(
                              onPressed: () {
                                setState(() {
                                  showcodetag = true;
                                });
                              },
                              child: const Text(
                                "Generate Tag",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ))
                    : Column(
                        children: [
                          const SizedBox(height: 100),
                          codeTag("XBFID4"),
                        ],
                      ),
                const SizedBox()
              ],
            )),
      ),
    );
  }
}
