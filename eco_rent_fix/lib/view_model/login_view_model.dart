import 'package:eco_rent_fix/view/login_view.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends StatefulWidget {
  const LoginViewModel({super.key});

  @override
  State<LoginViewModel> createState() => _LoginViewModelState();
}

class _LoginViewModelState extends State<LoginViewModel> {
  bool showLoginView = true;

  void togglePages() {
    setState(() {
      showLoginView = !showLoginView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoginView(onTap: togglePages,);
  }
}
