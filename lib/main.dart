// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app/Add.dart';
import 'package:flutter_app/account.dart';
import 'package:flutter_app/chat.dart';
import 'package:flutter_app/myads.dart';
import 'package:flutter_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final _pages = [
    HomeScreen(),
    MyAds(),
    Add(),
    Chat(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined), label: "My Ads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Account"),
          ],
        selectedItemColor: Color(0xff1A132F),
        unselectedItemColor: Color(0xffc4c4c4),
      ),
      body: _pages[_currentIndex],

    );
  }
}
