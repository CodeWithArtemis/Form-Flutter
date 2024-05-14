// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test101/view_models/sign_in_view_model.dart';

class SignInForm extends StatelessWidget {
  final SignInModel signInModel = SignInModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sign In',
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
              onChanged: signInModel.setUsername,
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
              onChanged: signInModel.setPassword,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => signInModel.submitForm(context),
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
                Navigator.pop(context);
              },
              child: Text('Dont Have an Account? Sign Up Here.',
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
