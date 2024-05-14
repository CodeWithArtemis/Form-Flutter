import 'package:flutter/material.dart';
import 'package:test101/views/sign_in_view.dart';
import 'package:test101/views/sign_up_view.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SignUpForm(),
      '/sign-in': (context) => SignInForm(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
