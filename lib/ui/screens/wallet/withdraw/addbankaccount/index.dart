import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class WalletAddBank extends StatefulWidget {
  const WalletAddBank({super.key});

  @override
  State<WalletAddBank> createState() => _WalletAddBankState();
}

class _WalletAddBankState extends State<WalletAddBank> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  bool checkIfInputFieldIsComplete = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String selectedBank = '';

    List<String> nigerianBanks = [
      'AccessBank',
      'Zenith Bank',
      'First Bank of Nigeria',
      'Guaranty Trust Bank (GTB)',
      'United Bank for Africa (UBA)',
      'Union Bank',
      'Fidelity Bank',
      'Ecobank',
      'Sterling Bank',
      'Polaris Bank',
      'Wema Bank',
      'First City Monument Bank (FCMB)',
      'Stanbic IBTC Bank',
      'Keystone Bank',
      'Unity Bank',
      'Heritage Bank',
    ];

    bool validateForm() {
      return _formkey.currentState!.validate();
    }

    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Positioned(
              top: 70,
              child: Container(
                width: width,
                height: height - 90,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            backNavigation(context),
                            const SizedBox(height: 50),
                            const Text(
                              "Add Bank",
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const SizedBox(height: 10),
                            Form(
                                key: _formkey,
                                child: Column(
                                  children: [
                                    Material(
                                      elevation: 12.0,
                                      borderRadius: BorderRadius.circular(8),
                                      shadowColor:
                                          Colors.black.withOpacity(0.75),
                                      child: TextFormField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            hintText: 'Account Number',
                                            fillColor: Colors.white,
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 3.0)),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    20.0, 10.0, 20.0, 10.0),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 3.0))),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        // validator: (text) {
                                        //   if (text == null || text.isEmpty) {
                                        //     return 'First name can\'t be empty';
                                        //   }
                                        //   if (text.length < 2) {
                                        //     return "Please enter a valid first name";
                                        //   }
                                        //   if (text.length > 49) {
                                        //     return 'Name can\t be more than 50';
                                        //   }
                                        // },
                                        onChanged: (value) {
                                          final boolvalue = validateForm();
                                          setState(() {
                                            checkIfInputFieldIsComplete =
                                                boolvalue;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Material(
                                      elevation: 12.0,
                                      borderRadius: BorderRadius.circular(8),
                                      shadowColor:
                                          Colors.black.withOpacity(0.75),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 15, horizontal: 10),
                                          labelText: 'Select Bank',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                              color: primaryColor,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        items: nigerianBanks.map((String bank) {
                                          return DropdownMenuItem<String>(
                                            value: bank,
                                            child: Text(bank),
                                          );
                                        }).toList(),
                                        onChanged: (String? value) {
                                          setState(() {
                                            selectedBank = value!;
                                          });
                                        },
                                        // validator: (String? value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return 'Please select a bank';
                                        //   }
                                        // },
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: checkIfInputFieldIsComplete
                            ? CustomPrimaryButton(
                                onPressed: () {
                                  context.push('/managebankaccount');
                                },
                                color: primaryColor,
                                text: "Add Bank",
                                textcolor: Colors.white,
                              )
                            : CustomPrimaryButton(
                                onPressed: () {},
                                color: const Color(0xFFE8E8E8),
                                text: "Add Bank",
                              ),
                      ),
                    ]),
              ))
        ],
      ),
    ));
  }
}
