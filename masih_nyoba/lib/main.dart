import 'package:flutter/material.dart';
import 'package:masih_nyoba/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'models/like_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LikeModel(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

