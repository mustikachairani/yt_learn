import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Respect'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('kok kamu cakep banget sihh'),
            Text('Respect Parah'),
            Text('kaya kamu tau gasih only you and you are end only')
          ],
        ),
      ),
    );
  }
}