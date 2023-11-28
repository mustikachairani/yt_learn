import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFolderView = true; // Untuk menandai apakah kita berada di tampilan folder atau widget folder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Folder App'),
      ),
      body: Center(
        child: isFolderView ? FolderView() : WidgetFolder(),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            // Toggle antara tampilan folder dan widget folder
            isFolderView = !isFolderView;
          });
        },
        child: Text(isFolderView ? 'Switch to Widget Folder' : 'Switch to Folder View'),
      ),
    );
  }
}

class FolderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'This is the Folder View',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class WidgetFolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          // Aksi yang akan diambil ketika tombol di widget folder ditekan
          print('Button in Widget Folder pressed!');
        },
        child: Text('Button in Widget Folder'),
      ),
    );
  }
}
