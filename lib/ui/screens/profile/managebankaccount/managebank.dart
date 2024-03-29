import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class ManageBankAccount extends StatefulWidget {
  const ManageBankAccount({super.key});

  @override
  State<ManageBankAccount> createState() => _ManageBankAccountState();
}

class _ManageBankAccountState extends State<ManageBankAccount> {
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
                              "Manage Bank Account",
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 20, left: 20),
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(14)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Union Bank",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Work Sans',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                        MaterialButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {},
                                          child: Image.asset(
                                              "public/images/whitebankicon.png"),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 40),
                                    const Text(
                                      "2625761548",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      "Lekan Kareem",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13),
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          child: CustomPrimaryButton(
                        onPressed: () {
                          context.push('/managebankaccount/updatebankaccount');
                        },
                        color: primaryColor,
                        text: "Update Bank Account",
                        textcolor: Colors.white,
                      )),
                    ]),
              ))
        ],
      ),
    ));
  }
}
