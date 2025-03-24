// main.dart
import 'package:commerce/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

// import 'screens/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'ECommerce',
      theme: ThemeData(
       primaryColor: Color(0xFFED3022),
      ),
      home: NavigationScreen(),
    );
  }
}