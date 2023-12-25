import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alamat',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alamat'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Tambahkan Lokasi',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Lokasi Terpilih:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Batam Kota',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Pilih Jalan:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 16),
                  DropdownButton<String>(
                    value: 'Jalan Amir Hamzah',
                    items: [
                      DropdownMenuItem(
                        value: 'Jalan Amir Hamzah',
                        child: Text('Jalan Amir Hamzah'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan Bawal',
                        child: Text('Jalan Bawal'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan Duyung',
                        child: Text('Jalan Duyung'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan Engku Putri',
                        child: Text('Jalan Engku Putri'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan Imam Bonjol',
                        child: Text('Jalan Imam Bonjol'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan Ahmad Yani',
                        child: Text('Jalan Ahmad Yani'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan Letjen Suprapto',
                        child: Text('Jalan Letjen Suprapto'),
                      ),
                      DropdownMenuItem(
                        value: 'Jalan MT Hany',
                        child: Text('Jalan MT Hany'),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle onChanged
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}