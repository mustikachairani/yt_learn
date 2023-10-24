// detail_barang.dart
import 'package:flutter/material.dart';
import '../model/rental_item.dart';

class DetailBarang extends StatelessWidget {
  final RentalItem item;

  DetailBarang({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Barang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${item.name}'),
            Text('Description: ${item.description}'),
            Text('Price: ${item.price}'),
            // Tambahkan informasi detail lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
