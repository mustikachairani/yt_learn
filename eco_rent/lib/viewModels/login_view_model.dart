import 'package:eco_rent/models/user_model.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  UserModel user = UserModel();

  void updateUsername(String value) {
    user.username = value;
    notifyListeners();
  }

  void updateEmailAddress(String value) {
    user.emailAddress = value;
    notifyListeners();
  }

  void onLoginButtonPressed() {
    print(
        'Login Button Pressed! Username: ${user.username}, Email: ${user.emailAddress}');
  }
}
