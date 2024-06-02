import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';
// import 'widget/cardlist.dart';

class WalletAddBank extends StatefulWidget {
  const WalletAddBank({super.key});

  @override
  State<WalletAddBank> createState() => _WalletAddBankState();
}

class _WalletAddBankState extends State<WalletAddBank> {
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
                                    "Add Bank",
                                    style: TextStyle(
                                        fontFamily: 'Work Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                      'Enter the details of this payment method',
                                      style: TextStyle(
                                          color: Color(0XFF717171),
                                          fontFamily: "Work Sans",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                  const SizedBox(height: 20),
                                  Form(
                                      // key: _formkey,
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Account Name',
                                          style: TextStyle(
                                              color: Color(0XFF060606),
                                              fontFamily: "Work Sans",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                      const SizedBox(height: 5),
                                      TextFormField(
                                        // controller: _nameController,
                                        decoration: InputDecoration(
                                          // border: InputBorder.none,
                                          hintText: 'Account name',
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
                                      const Text('Bank Name',
                                          style: TextStyle(
                                              color: Color(0XFF060606),
                                              fontFamily: "Work Sans",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                      const SizedBox(height: 5),
                                      TextFormField(
                                        // controller: _nameController,
                                        decoration: InputDecoration(
                                          // border: InputBorder.none,
                                          hintText: 'Bank name',
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
                                      const Text('Bank Number',
                                          style: TextStyle(
                                              color: Color(0XFF060606),
                                              fontFamily: "Work Sans",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                      const SizedBox(height: 5),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Account number',
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
                                      Container(
                                        width: width,
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Color(0XFFFFF1EA),
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        child: const Text(
                                            "Note: The payment method you’re adding will be \n shown during any transaction. Please make sure \n that your provided details are correct to avoid\n financial loss.",
                                            style: TextStyle(
                                                color: Color(0XFFFD935E))),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomPrimaryButton(
                                    onPressed: () {
                                      context.push("/wallet/addbank/confirm");
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
}
