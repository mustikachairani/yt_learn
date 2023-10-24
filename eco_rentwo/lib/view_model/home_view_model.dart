// home_view_model.dart
import 'package:flutter/material.dart';
import '../model/rental_item.dart';
import '../service/rental_service.dart';


class HomeViewModel extends ChangeNotifier {
  final RentalService _rentalService = RentalService();
  String? username;
  List<RentalItem> availableItems = [];

  void loadAvailableItems() {
    availableItems = _rentalService.getAvailableItems();
    print('Available Items: $availableItems');
    notifyListeners();
  }

 void logout(BuildContext context) {
    // Lakukan logika logout di sini, seperti membersihkan state
    username = null;

    // Navigasi ke halaman login
    Navigator.pushReplacementNamed(context, '/login');
  }
}
