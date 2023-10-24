import 'package:eco_rent/models/equipment_model.dart';
import 'package:eco_rent/models/order_model.dart';
import 'package:eco_rent/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/login/login_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => UserModel(),),
      ChangeNotifierProvider(create: (context) => EquipmentModel(),),
      ChangeNotifierProvider(create: (context) => OrderModel(),),
    ],
    child: MaterialApp(
      home: Login(),
    ),
    );
  }
}