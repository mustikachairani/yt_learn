import 'package:flutter/foundation.dart';

class EcoRentProvider with ChangeNotifier {
  String _globalMessage = "Welcome to EcoRent!";

  String get globalMessage => _globalMessage;

  void setGlobalMessage(String message) {
    _globalMessage = message;
    notifyListeners();
  }
}
