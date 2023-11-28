import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  // Daftar kecamatan
  final List<String> kecamatanList = [
    'Batam Kota',
    'Bengkong',
    'Bulang',
    'Galang',
    'Lubuk Baja',
    'Nongsa',
    'Sagulung',
    'Sei',
    'Sekupang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Tambah Lokasi'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 18,
          fontStyle: FontStyle.normal,
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 239, 83, 72),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Menetapkan alignment ke start (kiri)
          children: [
            Text(
              'Kecamatan',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Divider(
              thickness: 2.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kecamatanList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text('${kecamatanList[index]}',style: TextStyle(fontWeight: FontWeight.bold),),
                        onTap: () {
                          // Aksi yang diambil ketika ListTile ditekan
                          print('Anda memilih kecamatan: ${kecamatanList[index]}');
                        },
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
