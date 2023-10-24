import '../model/rental_item.dart';

class RentalService {
  List<RentalItem> getAvailableItems() {
    // Logika untuk mendapatkan daftar barang tersedia
    return [
      RentalItem(name: 'Tenda', price: 50.0),
      RentalItem(name: 'Matras', price: 20.0),
    ];
  }
}
