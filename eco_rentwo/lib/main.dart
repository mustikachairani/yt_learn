import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/login_view.dart';
import 'view_model/login_view_model.dart';
import 'view/home_view.dart';
import 'view_model/home_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>(
          create: (context) => LoginViewModel(),
        ),
        ChangeNotifierProvider<HomeViewModel>(
          create: (context) => HomeViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Rental Tenda dan Matras',
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginView(),
          '/home': (context) => HomeView(),
        },
      ),
    );
  }
}
