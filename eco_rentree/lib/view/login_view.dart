// login_view.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/login_view_model.dart';
import '../view/home_view.dart';
// Impor HomeView

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('EcoRent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
              SizedBox(
                height: 15,
              ),
              Text('RENTAL PERLENGKAPAN OUTDOOR'),
              SizedBox(
                height: 35,
              ),
              buildTextField('Username'),
              SizedBox(
                height: 15,
              ),
              buildTextField('Email Address'),
              SizedBox(
                height: 35,
              ),
              buildLoginButton(loginViewModel, context),  // Pass loginViewModel dan context
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  Widget buildLoginButton(LoginViewModel loginViewModel, BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await loginViewModel.login(context);
      },
      child: Text('Login'),
    );
  }
}
