class User {
  String? username;
  String? email;
  String? password;
  String? confirmPassword;

  User({
    this.username,
    this.email,
    this.password,
    this.confirmPassword,
  });

  bool get isPasswordValid =>
      password != null && password!.isNotEmpty && password!.length >= 6;

  bool get isConfirmPasswordValid =>
      confirmPassword != null && confirmPassword == password;

  bool get isEmailValid =>
      email != null &&
      RegExp(
        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
        caseSensitive: false,
        multiLine: false,
      ).hasMatch(email!);

  bool get isValid =>
      username != null &&
      email != null &&
      password != null &&
      confirmPassword != null &&
      isPasswordValid &&
      isConfirmPasswordValid &&
      isEmailValid;

  User copyWith({
    String? username,
    String? email,
    String? password,
    String? confirmPassword,
    DateTime? dateOfBirth,
    bool? termsAndConditionsChecked,
  }) {
    return User(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}
