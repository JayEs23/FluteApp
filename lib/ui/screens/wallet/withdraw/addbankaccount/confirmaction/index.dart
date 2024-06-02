import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';
// import 'widget/cardlist.dart';

class WalletAddBankConfirmAction extends StatefulWidget {
  const WalletAddBankConfirmAction({super.key});

  @override
  State<WalletAddBankConfirmAction> createState() =>
      _WalletAddBankConfirmActionState();
}

class _WalletAddBankConfirmActionState
    extends State<WalletAddBankConfirmAction> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                        topRight: Radius.circular(32))),
                child: SingleChildScrollView(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: height - 100,
                        ),
                        // child: IntrinsicHeight(
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
                                        context.pop();
                                      },
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Image.asset(
                                            "public/images/cancel button.png"),
                                      )),
                                  const SizedBox(height: 20),
                                  const Text(
                                    "Confirm Action",
                                    style: TextStyle(
                                        color: Color(0XFF060606),
                                        fontFamily: 'Work Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22),
                                  ),
                                  const SizedBox(height: 40),
                                  Form(
                                      // key: _formkey,
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Verification code has been sent to \nabd****kan0@gmail.com",
                                        style: TextStyle(
                                            color: Color(0XFF060606),
                                            fontFamily: 'Work Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                        // controller: _nameController,
                                        decoration: InputDecoration(
                                          // border: InputBorder.none,
                                          hintText: 'Enter verification code',
                                          fillColor: Colors.white,
                                          filled: true,
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              borderSide: const BorderSide(
                                                  color: Color(0XFFE4E4E4),
                                                  width: 3.0)),
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  20.0, 10.0, 20.0, 10.0),
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        // onChanged: (value) {
                                        //   final boolvalue = validateForm();
                                        //   setState(() {
                                        //     checkIfInputFieldIsComplete =
                                        //         boolvalue;
                                        //   });
                                        // },
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  )),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomPrimaryButton(
                                    onPressed: () {
                                      showPaymentWithCard(context);
                                    },
                                    color: secondaryColor,
                                    child: const Text("Continue",
                                        style: TextStyle(
                                            fontFamily: "Work Sans",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(height: 10)
                                ],
                              ),
                            ]))),
              )),
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
              const Text("Payment method added",
                  style: TextStyle(
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                  )),
              const SizedBox(height: 5),
              Text("You payment method has\n been added successfully",
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
        routes: "withdraw",
        buttontext: "Close");
  }
}
