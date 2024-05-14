import 'package:flutter/material.dart';
import 'package:test101/models/sign_in_model.dart';

class SignInModel extends ChangeNotifier {
  User _user = User();
  void setUsername(String value) {
    _user.username = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _user.password = value;
    notifyListeners();
  }

  bool validateForm() {
    return _user.isValid;
  }

  void submitForm(BuildContext context) {
    if (validateForm()) {
      User user = User(username: _user.username, password: _user.password);
      // You can handle the result here, e.g., show a success dialog or navigate to another screen
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Sign Up Successful'),
          content: Text('Welcome, ${user.username}!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // Show error message if form is not valid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill all the fields.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
