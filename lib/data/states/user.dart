import 'package:flutter/cupertino.dart';
import '../models/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

class UserState extends ChangeNotifier {
  User? user;
  final storage = const FlutterSecureStorage();

  void updateUserDetails(userdetails) async {
    try {
      var user_data = userdetails['msg'];

      user = User(
          email: user_data["email"],
          uid: user_data["uid"],
          phone: user_data["phone"],
          name: user_data["name"],
          emailIsVerified: user_data["emailIsVerified"],
          email_verification_code: user_data["email_verification_code"] ?? "");

      DateTime expiryDate = DateTime.now()
          .add(const Duration(days: 12)); // Example: Data expires in 12 days
      await storage.write(key: 'user_data', value: jsonEncode(user_data));
      await storage.write(
          key: 'expiryDate', value: expiryDate.toIso8601String());
      notifyListeners();
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  void clearUserData() async {
    await storage.delete(key: 'user_data');
    await storage.delete(key: 'expiryDate');
    user = null;
    notifyListeners();
  }
}
