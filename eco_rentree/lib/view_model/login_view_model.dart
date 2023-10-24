// login_view_model.dart
import 'package:flutter/material.dart';

import '../view/home_view.dart';

class LoginViewModel extends ChangeNotifier {
  Future<void> login(BuildContext context) async {
    // Logika untuk proses login
    print('Login successful!');
    
    // Navigasi ke halaman home
    Navigator.pushReplacementNamed(context, '/home');
    // Navigator.pushReplacement(
    //   Navigator.of(context) as BuildContext,
    //   MaterialPageRoute(builder: (context) => HomeView()),
    // );
  }

  void logout(BuildContext context) {
    // Lakukan logika logout di sini, seperti membersihkan state
    var username = null;

    // Navigasi ke halaman login
    Navigator.pushReplacementNamed(context, '/login');
  }
}
