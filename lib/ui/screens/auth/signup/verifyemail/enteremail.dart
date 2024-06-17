import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:go_router/go_router.dart';
import 'package:fidemlt/services/api.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EnterEmailToVerify extends StatefulWidget {
  const EnterEmailToVerify({Key? key}) : super(key: key);

  @override
  State<EnterEmailToVerify> createState() => _EnterEmailToVerifyState();
}

class _EnterEmailToVerifyState extends State<EnterEmailToVerify> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  bool _checkIfInputFieldIsComplete = false;
  bool _isLoading = false;
  Services api = Services();

  void _submit(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    try {
      if (_formKey.currentState!.validate()) {
        Map<String, dynamic> userDetails = {
          "email": _emailController.text.trim(),
        };

        var signupResponse = await api.post(
          "/registration/initiate",
          userDetails,
          '',
        );

        if (signupResponse['error']) {
          throw Exception("${signupResponse['error']['email']}");
        } else {}
        // context.push('/verifyemail/enteremailcode');
      } else {
        Fluttertoast.showToast(msg: "Please fill all fields");
      }
    } catch (err) {
      Fluttertoast.showToast(msg: err.toString());
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _updateInputFieldValidation(bool isValid) {
    setState(() {
      _checkIfInputFieldIsComplete = isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -30,
            top: -30,
            child: Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // Direction is bottom to top
                  end: Alignment.bottomCenter,
                  colors: [
                    primaryColor.withOpacity(0.03), // Start color
                    secondaryColor.withOpacity(0.03), // End color
                  ],
                  stops: [
                    0.3676, // 36.76%
                    1.0 // 100%
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -30,
            bottom: -30,
            child: Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25), // shadow color
                    spreadRadius: 15, // spread radius
                    blurRadius: 105, // blur radius
                    offset: const Offset(0, -15), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // Direction is bottom to top
                  end: Alignment.bottomCenter,
                  colors: [
                    primaryColor.withOpacity(0.03), // Start color
                    secondaryColor.withOpacity(0.03), // End color
                  ],
                  stops: [
                    0.3676, // 36.76%
                    1.0 // 100%
                  ],
                ),
              ),
            ),
          ),
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
                          "What's your Email?",
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Don’t forget that the information you add for the application must be your own! You must make sure that your information is up to date and complete!",
                          style: TextStyle(
                            color: Color(0XFFB5B5B5),
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Material(
                                elevation: 12.0,
                                borderRadius: BorderRadius.circular(8),
                                shadowColor: Colors.black.withOpacity(0.75),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 3.0,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.fromLTRB(
                                      20.0,
                                      10.0,
                                      20.0,
                                      10.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 3.0,
                                      ),
                                    ),
                                  ),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  onChanged: (value) {
                                    _updateInputFieldValidation(
                                      _formKey.currentState!.validate(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: _checkIfInputFieldIsComplete
                        ? CustomPrimaryButton(
                            onPressed:
                                _isLoading ? () {} : () => _submit(context),
                            color: primaryColor,
                            child: _isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white,
                                      ),
                                    ),
                                  )
                                : const Text(
                                    "Next",
                                    style: TextStyle(color: Colors.white),
                                  ),
                          )
                        : CustomPrimaryButton(
                            onPressed: () {},
                            color: const Color(0xFFE8E8E8),
                            text: "Next",
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
