import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('EcoRent'),
            Text('Rental Peralatan Outdoor'),
            Text('Email'),
            Text('Password'),
            Text('Masuk')
          ],
        ),
      ),
    );
  }
}
