// screens/navigation_screen.dart

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import 'package:flutter/cupertino.dart';

import 'cart_screen.dart';
import 'favorite_screen.dart';
import 'profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
   int pageIndex = 0;

  List<Widget> pages = <Widget>[
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFFDB3022),
        child: const Icon(Icons.qr_code, size: 20,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ], 
        activeIndex: pageIndex, 
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        elevation: 0,
        iconSize: 25,
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Color(0xFFED3022),
        onTap: (index) => setState(() => pageIndex = index),
      ),
    );
  }
}