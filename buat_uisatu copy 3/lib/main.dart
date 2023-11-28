import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 224, 92, 82),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: TambahKeluhan(),
  ));
}

class TambahKeluhan extends StatefulWidget {
  const TambahKeluhan({Key? key}) : super(key: key);

  @override
  State<TambahKeluhan> createState() => _TambahKeluhanState();
}

class _TambahKeluhanState extends State<TambahKeluhan> {
  
  late XFile? _image; // Variable untuk menyimpan path gambar
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 224, 92, 82),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // Tombol keluar
          leading: IconButton(
            onPressed: () {
              print('leading berhasil');
            },
            icon: const Icon(Icons.arrow_back),
          ),

          // Nama bagian (Tambah Keluhan)
          title: const Text('Buat Keluhan'),
          centerTitle: true,
          backgroundColor: Colors.white,

          // Tombol keluar
          actions: [
            IconButton(
              onPressed: () {
                print('action berhasil');
              },
              icon: const Icon(Icons.close),
            ),
          ],
          iconTheme: const IconThemeData(
            color: Colors.black, // Menetapkan warna hitam untuk ikon
          ),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Profil -- foto profil -- nama pengguna
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/image/jk.jpeg"),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text('Jeon Jungkook'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // Kolom keluhan -- textfield
                TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    hintText: 'Tuliskan keluhan Anda',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 207, 105, 97),
                    ),
                    fillColor: Color.fromARGB(
                        255, 237, 209, 207), // Warna latar belakang transparan
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(
                            255, 227, 120, 112), // Warna pinggiran kotak
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 227, 97,
                            88), // Warna pinggiran kotak saat fokus
                        width: 2.0,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 16.0),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Gambar keluhan (preview nya)
                Center(
                  child: Container(
                    width: 100.0, // Sesuaikan ukuran sesuai kebutuhan
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          8.0), // Mengatur sudut menjadi tidak runcing
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/image/jk.jpeg', // Ganti dengan path gambar yang sesuai
                        fit: BoxFit
                            .cover, // Sesuaikan dengan kebutuhan penampilan gambar
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // Tambah gambar -- tombol delete -- tombol edit
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _getImageFromGallery();
                              },
                              icon: const Icon((Icons.image_sharp)),
                            ),
                            const Text('Tambahkan gambar'),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon((Icons.delete)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon((Icons.edit)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // Tambah lokasi
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon((Icons.location_on)),
                    ),
                    const Text('Tambahkan Lokasi'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // Pilih kategori
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon((Icons.grid_view_rounded)),
                        ),
                        
                      ],
                    ),
                    
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),

                // Tombol posting
                Container(
                  width: double.infinity, // Lebar tombol memenuhi layar.
                  height: 50.0, // Tinggi tombol sesuai kebutuhan.
                  child: ElevatedButton(
                    onPressed: () {
                      // Logika yang dijalankan saat tombol ditekan.
                    },
                    child: const Text(
                      'Tekan Saya',
                      style: TextStyle(fontSize: 18.0), // Ukuran teks tombol.
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 224, 92, 82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Mengatur sudut tombol.
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk mengambil gambar dari galeri
  Future<void> _getImageFromGallery() async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      setState(() {
        _image = pickedFile != null ? XFile(pickedFile.path) : null;
      });
    } catch (e) {
      print('Error: $e');
    }
  }
}
