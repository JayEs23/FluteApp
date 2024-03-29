import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import "package:fidemlt/ui/theme/colors.dart";
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';

class UpDatePersonalProfile extends StatefulWidget {
  const UpDatePersonalProfile({super.key});

  @override
  State<UpDatePersonalProfile> createState() => _UpDatePersonalProfileState();
}

class _UpDatePersonalProfileState extends State<UpDatePersonalProfile> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  bool checkIfInputFieldIsComplete = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                            const SizedBox(height: 20),
                            const Text(
                              "Update Personal Info",
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            const SizedBox(height: 30),
                            Form(
                                key: _formkey,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: width * 0.4,
                                          child: TextFormField(
                                            controller: _nameController,
                                            decoration: InputDecoration(
                                                // border: InputBorder.none,
                                                hintText: 'First name',
                                                fillColor: Colors.white,
                                                filled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        borderSide:
                                                            const BorderSide(
                                                                color:
                                                                    Colors
                                                                        .white,
                                                                width: 3.0)),
                                                contentPadding:
                                                    const EdgeInsets.fromLTRB(
                                                        20.0,
                                                        10.0,
                                                        20.0,
                                                        10.0),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: Colors.white,
                                                            width: 3.0))),
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
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
                                        SizedBox(
                                          width: width * 0.4,
                                          child: TextFormField(
                                            controller: _lastNameController,
                                            decoration: InputDecoration(
                                                hintText: 'Last Name',
                                                fillColor: Colors.white,
                                                filled: true,
                                                errorStyle: TextStyle(),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: Colors.white,
                                                            width: 3.0)),
                                                contentPadding:
                                                    const EdgeInsets.fromLTRB(
                                                        20.0, 10.0, 20.0, 10.0),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: Colors.white,
                                                            width: 3.0))),
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            // validator: (text) {
                                            //   if (text == null || text.isEmpty) {
                                            //     return 'Last Name can\'t be empty';
                                            //   }
                                            //   if (text.length < 2) {
                                            //     return "Please enter a valid Last name";
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
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    TextFormField(
                                      controller: _phoneController,
                                      keyboardType: TextInputType.phone,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                          // border: InputBorder.none,
                                          hintText: 'Phone Number',
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
                                      //     return 'Phone number can\'t be empty';
                                      //   }
                                      //   if (text.length < 11 ||
                                      //       text.length > 11) {
                                      //     return "Please enter a valid phone number";
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
                                    const SizedBox(height: 20),
                                    TextFormField(
                                      controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                          // border: InputBorder.none,
                                          hintText: 'Email Address',
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
                                      //     return 'Phone number can\'t be empty';
                                      //   }
                                      //   if (text.length < 11 ||
                                      //       text.length > 11) {
                                      //     return "Please enter a valid phone number";
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
                                    const SizedBox(height: 20),
                                    TextFormField(
                                      controller: _addressController,
                                      keyboardType: TextInputType.streetAddress,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                          // border: InputBorder.none,
                                          hintText: 'House Address',
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
                                      //     return 'Phone number can\'t be empty';
                                      //   }
                                      //   if (text.length < 11 ||
                                      //       text.length > 11) {
                                      //     return "Please enter a valid phone number";
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
                                    const SizedBox(height: 20),
                                  ],
                                )),
                            const SizedBox(height: 50),
                            SizedBox(
                              child: checkIfInputFieldIsComplete
                                  ? CustomPrimaryButton(
                                      onPressed: () {
                                        context.push('/changepassword');
                                      },
                                      color: primaryColor,
                                      text: "Save",
                                      textcolor: Colors.white,
                                    )
                                  : CustomPrimaryButton(
                                      onPressed: () {},
                                      color: const Color(0xFFE8E8E8),
                                      text: "Save",
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ))
        ],
      ),
    ));
  }
}
