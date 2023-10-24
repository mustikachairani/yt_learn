import 'package:eco_rent/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: EdgeInsets.all(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('EcoRent',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                SizedBox(
                  height: 15,
                ),
                Text('RENTAL PERLENGKAPAN OUTDOOR'),
                SizedBox(
                  height: 35,
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'Username',
                //     border: OutlineInputBorder(
                //       // Menambahkan border
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(10.0),
                //       ),
                //     ),
                //     filled: true, // Memberikan warna latar belakang
                //     fillColor: Colors.grey[200], // Warna latar belakang
                //   ),
                // ),
                buildTextField('Username'),
                SizedBox(
                  height: 15,
                ),
                // Text('Email'),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'Email Addres',
                //     border: OutlineInputBorder(
                //       // Menambahkan border
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(10.0),
                //       ),
                //     ),
                //     filled: true, // Memberikan warna latar belakang
                //     fillColor: Colors.grey[200], // Warna latar belakang
                //   ),
                // ),
                buildTextField('Email Address'),
                // Text('Password')
                SizedBox(
                  height: 35,
                ),
                // ElevatedButton(onPressed: (){}, child: Text('Login', style: TextStyle(fontSize: 18.0),))
                buildLoginButton(),
              ],
            )),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        // Panggil metode di ViewModel
      },
      child: Text('Login', style: TextStyle(fontSize: 18.0)),
    );
  }
}
