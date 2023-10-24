import 'package:eco_rent_fix/widget/my_button.dart';
import 'package:eco_rent_fix/widget/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final void Function()? onTap;

  LoginView({
    super.key,
    required this.onTap,
  });

  //text controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // app name
              Text('ECORENT'),
              SizedBox(
                height: 20.0,
              ),
              // desc app name
              Text('RENTAL PERLENGKAPAN OUTDOOR'),
              SizedBox(
                height: 20.0,
              ),
              // email textfield
              MyTextField(
                hintText: "Email",
                obsecureText: false,
                controller: emailController,
              ),
              SizedBox(
                height: 10.0,
              ),
              // password textfield
              MyTextField(
                hintText: "Password",
                obsecureText: true,
                controller: passwordController,
              ),
              SizedBox(
                height: 20.0,
              ),
              // login button
              MyButton(
                text: "Login",
                onTap: login,
              )
            ],
          ),
        ),
      ),
    );
  }
}
