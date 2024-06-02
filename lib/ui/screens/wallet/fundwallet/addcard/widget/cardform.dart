import 'package:flutter/material.dart';

Widget AddCardForm(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  final _cardNumber = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool _isChecked = false; // Initial checked state

  return (Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Card Number",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0XFF060606))),
          const SizedBox(height: 5),
          TextFormField(
            controller: _cardNumber,
            decoration: InputDecoration(
              hintText: 'Email',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      const BorderSide(color: Colors.black, width: 1.0)),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
          const Text("Name on card",
              style: TextStyle(
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0XFF060606))),
          const SizedBox(height: 5),
          TextFormField(
            controller: _cardNumber,
            decoration: InputDecoration(
              hintText: 'Email',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      const BorderSide(color: Colors.black, width: 1.0)),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.42,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Expiration Date",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0XFF060606))),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: _cardNumber,
                      decoration: InputDecoration(
                        hintText: '06/60',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.0)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.42,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("CVV",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0XFF060606))),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: _cardNumber,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.0)),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Text("PIN",
          //         style: TextStyle(
          //             fontFamily: "Work Sans",
          //             fontWeight: FontWeight.w500,
          //             fontSize: 12,
          //             color: Color(0XFF060606))),
          //     const SizedBox(width: 5),
          //     SizedBox(
          //       width: width * 0.4,
          //       child: TextFormField(
          //         controller: _cardNumber,
          //         decoration: InputDecoration(
          //           hintText: 'Email',
          //           enabledBorder: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(8.0),
          //               borderSide:
          //                   const BorderSide(color: Colors.black, width: 1.0)),
          //           contentPadding:
          //               const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          //         ),
          //         autovalidateMode: AutovalidateMode.onUserInteraction,
          //         onChanged: (value) {},
          //       ),
          //     )
          //   ],
          // ),
        ],
      )));
}
