import 'package:fidemlt/ui/widget/button/primarybutton.dart';
import 'package:flutter/material.dart';

class PendingBuyerTransactionMissingPackage extends StatefulWidget {
  const PendingBuyerTransactionMissingPackage({super.key});

  @override
  State<PendingBuyerTransactionMissingPackage> createState() =>
      _PendingBuyerTransactionMissingPackageState();
}

class _PendingBuyerTransactionMissingPackageState
    extends State<PendingBuyerTransactionMissingPackage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Missing Item",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white, width: 3.0))),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 100,
              child: CustomPrimaryButton(
                width: 100,
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
