// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test101/view_models/sign_up_view._model.dart';

class SignUpForm extends StatelessWidget {
  final SignUpViewModel viewModel = SignUpViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
              onChanged: viewModel.setUsername,
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
              ),
              onChanged: viewModel.setEmail,
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              obscureText: true,
              onChanged: viewModel.setPassword,
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              obscureText: true,
              onChanged: viewModel.setConfirmPassword,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => viewModel.submitForm(context),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text('Already Have an account? Sign In Here.',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
