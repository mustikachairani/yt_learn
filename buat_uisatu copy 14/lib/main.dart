import 'package:buat_uisatu/viewModels/provider/complaint.dart';
import 'package:buat_uisatu/views/Home/home_addcomplaint.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'views/Welcome/spalsh_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
         Provider<AddComplaintProvider>(create: (_) => AddComplaintProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Complaint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nunito",
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFDF2216)),
        // useMaterial3: true,
      ),
      initialRoute: '/addcomplaint',
      routes: {
        '/addcomplaint': (context) => const AddComplaint(
              selectedLocation: '',
              selectedLocation2: '',
            ),
      },
    );
  }
}
