// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buttom_navigation/Pages/home.dart';
import 'package:buttom_navigation/Pages/profile.dart';
import 'package:buttom_navigation/Pages/settinges.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this method update the new selected indez
  int _selectedIndex = 0;

  // this page we have been our app
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List pages = [
    //Home
    Home(),
    //Profile
    Profile(),
    //Settinges
    Settinges()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        elevation: 10,
        items: [
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //Profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          //Settinges
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settinges',
          ),
        ],
      ),
    );
  }
}
