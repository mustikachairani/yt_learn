import 'package:flutter/material.dart';

void main() {
  runApp(const TambahKeluhan());
}

class TambahKeluhan extends StatefulWidget {
  const TambahKeluhan({super.key});

  @override
  State<TambahKeluhan> createState() => _TambahKeluhanState();
}

class _TambahKeluhanState extends State<TambahKeluhan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(
            color: Color.fromARGB(
                255, 224, 92, 82) // Ganti dengan warna yang diinginkan
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //tombol keluar
          leading: IconButton(
            onPressed: () {
              print('leading berhasil');
            },
            icon: Icon(Icons.arrow_back),
          ),

          //nama bagian (Tambah Keluhan)
          title: Text('Buat Keluhan'),
          centerTitle: true,
          backgroundColor: Colors.white,

          //tombol keluar
          actions: [
            IconButton(
              onPressed: () {
                print('action berhasil');
              },
              icon: Icon(Icons.close),
            ),
          ],
          iconTheme: IconThemeData(
            color: Colors.black, // Menetapkan warna hitam untuk ikon
          ),
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
//===========================================================================================================================
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
//===========================================================================================================================

                //profil --foto profil --nama oengguna
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/image/jk.jpeg"),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text('Jeon Jungkook'),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
//===========================================================================================================================

                //kolom keluhan --textfield
                TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      hintText: 'Tuliskan keluhan Anda',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 207, 105, 97),
                      ),
                      fillColor: Color.fromARGB(255, 237, 209,
                          207), // Warna latar belakang transparan
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
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 35, horizontal: 16.0)),
                ),

                SizedBox(
                  height: 20,
                ),
//===========================================================================================================================

                //gambar keluhan (preview nya)

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

                SizedBox(
                  height: 25,
                ),
//===========================================================================================================================

                // tambah gambar -- tombol delete --tombol edit
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon((Icons.image_sharp)),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon((Icons.delete)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon((Icons.edit)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
//===========================================================================================================================

                // tambah lokasi
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon((Icons.location_on)),
                    )
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
//===========================================================================================================================

                //pilih kategori
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon((Icons.grid_view_rounded)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon((Icons.arrow_drop_down_circle_outlined)),
                    ),
                  ],
                ),

                SizedBox(
                  height: 100,
                ),
//===========================================================================================================================

                //tombol posting
                Container(
                  width: double.infinity, // Lebar tombol memenuhi layar.
                  height: 50.0, // Tinggi tombol sesuai kebutuhan.
                  child: ElevatedButton(
                    onPressed: () {
                      // Logika yang dijalankan saat tombol ditekan.
                    },
                    child: Text(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
