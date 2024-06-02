import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fidemlt/ui/widget/alert/index.dart';
import 'widget/cardlist.dart';

class FundWalletScreen extends StatefulWidget {
  const FundWalletScreen({super.key});

  @override
  State<FundWalletScreen> createState() => _FundWalletScreenState();
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  int _selectedValue = 0; // Initial selected value

  void _handleRadioValueChanged(int value) {
    setState(() {
      _selectedValue = value;
    });
  }

  List<Map> cardList = [
    {
      "no": 0,
      "cardName": "master",
      "first4digit": 5401,
      "last4digit": 2211,
    },
    {
      "no": 1,
      "cardName": "visa",
      "first4digit": 5401,
      "last4digit": 2211,
    },
    {
      "no": 2,
      "cardName": "verve",
      "first4digit": 5401,
      "last4digit": 2211,
    },
  ];

  int clickedCardIndex = -1;

  void updateClickedCardIndex(index) {
    setState(() {
      clickedCardIndex = index;
    });
  }

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
                                    "Fund Wallet",
                                    style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                        color: Color(0XFF060606)),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                      "How much did you want to deposit?",
                                      style: TextStyle(
                                          fontFamily: "Work Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0XFF717171))),
                                  const SizedBox(height: 10),
                                  Form(
                                      // key: _formkey,
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFormField(
                                        keyboardType: TextInputType.number,
                                        // controller: _nameController,
                                        decoration: InputDecoration(
                                            hintText: "Amount (NGN)",
                                            fillColor: Colors.white,
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Color(0XFFE6E6E6),
                                                    width: 1.0)),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    20.0, 25.0, 20.0, 25.0),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 3.0))),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,

                                        onChanged: (value) {
                                          // final boolvalue = validateForm();
                                          setState(() {
                                            // checkIfInputFieldIsComplete = boolvalue;
                                          });
                                        },
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  )),
                                  Row(
                                    children: [
                                      Radio<int>(
                                        value: 1,
                                        groupValue: _selectedValue,
                                        onChanged: (int? value) {
                                          setState(() {
                                            _selectedValue = value!;
                                          });
                                        },
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Debit Card",
                                            style: TextStyle(
                                                fontFamily: "Work Sans",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                                color: Color(0XFF060606)),
                                          ),
                                          const SizedBox(width: 10),
                                          Image.asset(
                                              "public/images/card logo.png")
                                        ],
                                      ),
                                    ],
                                  ),
                                  if (_selectedValue == 1)
                                    Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        ...cardList
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          int index = entry.key;
                                          Map e = entry.value;
                                          return CardList(
                                            index: index,
                                            cardName: e['cardName'],
                                            first4digit: e['first4digit'],
                                            last4digit: e['last4digit'],
                                            updateClickedCardIndex:
                                                updateClickedCardIndex,
                                            clickedIndex: clickedCardIndex,
                                          );
                                        }).toList(),
                                        const SizedBox(height: 10),
                                        GestureDetector(
                                          onTap: () {
                                            context.push("/addcard");
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  "public/svg/plus.svg"),
                                              const SizedBox(width: 7),
                                              const Text("Add New Card",
                                                  style: TextStyle(
                                                      color: Color(0XFF868686),
                                                      fontFamily: "Work Sans",
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15))
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  else
                                    Row(
                                      children: [
                                        Radio<int>(
                                          value: 2,
                                          groupValue: _selectedValue,
                                          onChanged: (int? value) {
                                            setState(() {
                                              _selectedValue = value!;
                                            });
                                          },
                                        ),
                                        Image.asset(
                                            "public/images/paystacklogo.png"),
                                      ],
                                    ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomPrimaryButton(
                                    onPressed: () {
                                      showPaymentWithCard(context);
                                    },
                                    color: secondaryColor,
                                    child: const Text("Fund Wallet",
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
              Text("Hurray! Hurray",
                  style: TextStyle(
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: primaryColor)),
              const SizedBox(height: 5),
              Text("You just deposited #20,000",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF3F3F3F),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
              const SizedBox(height: 10),
              Text("Happy savings",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 11)),
              const SizedBox(height: 20),
            ],
          )
        ],
        routes: "wallet",
        buttontext: "Close");
  }
}
