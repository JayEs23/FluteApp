class User {
  String uid;
  String email;
  String name;
  String phone;
  bool emailIsVerified;
  String? email_verification_code;

  User(
      {required this.uid,
      required this.email,
      required this.phone,
      required this.name,
      required this.emailIsVerified,
      this.email_verification_code});
}
