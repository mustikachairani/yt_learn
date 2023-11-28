import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      iconTheme: const IconThemeData(
        color: Colors.red,
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
  List<CategoryName> category = [
    CategoryName(id: 1, name: "Kekerasan"),
    CategoryName(id: 2, name: "Pelecehan"),
    CategoryName(id: 3, name: "Bulliying"),
    CategoryName(id: 4, name: "Sampah"),
    CategoryName(id: 5, name: "Pungli"),
    CategoryName(id: 6, name: "Infrastruktur"),
    CategoryName(id: 7, name: "Umum"),
    CategoryName(id: 8, name: "Pelayanan"),
    CategoryName(id: 9, name: "Keamanan"),
  ];

  CategoryName? selectedValue;

  late XFile? _image;

  Future<void> _getImageFromGallery() async {
  try {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path);
      });
    } else {
      // Handle the case when user cancels image selection
      // You can show a snackbar or a dialog to inform the user.
      print('User canceled image selection');
    }
  } catch (e) {
    // Handle other errors that might occur during image selection
    // You can show a snackbar or a dialog to inform the user about the error.
    print('Error selecting image: $e');
  }
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 239, 83, 72),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              print('leading berhasil');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Buat Keluhan'),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 239, 83, 72),
          ),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 18,
            fontStyle: FontStyle.normal,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/image/jk.jpeg"),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text('Jeon Jungkook', style: TextStyle(fontSize: 18)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 3,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    hintText: 'Tulis keluhan anda...',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 237, 109, 94),
                    ),
                    fillColor: Color.fromARGB(255, 249, 219, 216),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 249, 200, 197),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 240, 119, 110),
                        width: 2.0,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 16.0,
                    ),
                  ),
                ),


                
                const SizedBox(
                  height: 25,
                ),
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
                              icon: const Icon((Icons.image_outlined)),
                            ),
                            const Text(
                              'Tambahkan Foto/Video',
                              style: TextStyle(
                                color: Color.fromARGB(255, 249, 171, 167),
                              ),
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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        openMaps();
                      },
                      icon: const Icon((Icons.location_on_outlined)),
                    ),
                    const Text(
                      'Tambahkan Lokasi',
                      style: TextStyle(
                        color: Color.fromARGB(255, 249, 171, 167),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.grid_view),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 0),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<CategoryName?>(
                        hint: Text(
                          'Pilih Kategori',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 249, 171, 167),
                          ),
                        ),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        underline: SizedBox(),
                        items: category
                            .map<DropdownMenuItem<CategoryName>>(
                              (e) => DropdownMenuItem(
                                child: Text((e?.name ?? '').toString()),
                                value: e,
                              ),
                            )
                            .toList(),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.red,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Logika yang dijalankan saat tombol ditekan.
                    },
                    child: const Text(
                      'Posting',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 243, 82, 64),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
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

  void openMaps() async {
    // Ganti koordinat dengan nilai yang sesuai dengan lokasi yang ingin ditampilkan
    
  }
}

class CategoryName {
  CategoryName({this.id, this.name});

  int? id;
  String? name;
}
