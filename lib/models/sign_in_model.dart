class User {
  String? username;
  String? password;

  User({
    this.username,
    this.password,
  });

  bool get isPasswordValid =>
      password != null && password!.isNotEmpty && password!.length >= 6;

  bool get isValid => username != null && isPasswordValid;
}
