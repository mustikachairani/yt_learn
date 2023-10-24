// home_view.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/rental_item.dart';
import '../view_model/home_view_model.dart';
import 'detail_barang.dart'; // Gantilah dengan nama file yang sesuai dengan halaman detail barang

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeViewModel>(context, listen: false).loadAvailableItems();
  }

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Panggil fungsi logout di ViewModel dengan memberikan context
              homeViewModel.logout(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (homeViewModel.username != null)
              Text('Welcome, ${homeViewModel.username}!'),
            SizedBox(height: 20),
            Expanded(
              child: _buildItemList(homeViewModel.availableItems),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemList(List<RentalItem> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(items[index].name),
            subtitle: Text('Description: ${items[index].description}'),
            trailing: Text('Price: ${items[index].price}'),
            onTap: () {
              // Navigasi ke halaman detail barang
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailBarang(item: items[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
