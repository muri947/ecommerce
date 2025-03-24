// screens/splash_screen.dart
 
 import 'dart:async';

import '../screens/onboarding_screen.dart';
import 'package:flutter/material.dart';



 class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration : BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/image2.jpg'),
            fit: BoxFit.cover,
            opacity: 0.4 ,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart, 
              size: 250, 
              color: Color.fromARGB(255, 238, 80, 80),),
            Text('DP  SHOP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),)
          ],
        ),
      ),
    );
  }
}