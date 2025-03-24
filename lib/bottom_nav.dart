import 'package:flutter/material.dart';
import 'package:vision/Chat/chat_page.dart';
import 'package:vision/Home/home_page.dart';
import 'package:vision/Markets/market_page.dart';
import 'package:vision/Portfolio/portfolio.dart';
import 'package:vision/Profile/profile.dart';
import 'package:vision/colorpallete/constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<String> appBarTitles = [
    'Home',
    'Markets',
    'Chat',
    'Portfolio',
    'Profile',
  ];

  late List<Widget> pages;

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage(),
      MarketPage(),
      ChatPage(),
      Portfolio(),
      Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[_selectedIndex],
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),), 
        backgroundColor: primaryColor,// Dynamic AppBar title
        actions: [
          IconButton(onPressed: (){}
          , icon: Icon(Icons.notifications,
          size: 34,),
          ),
          IconButton(onPressed: (){}
          , icon: Icon(
            Icons.account_circle,
            size: 34,
          ))
        ],
      ),
      body: pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        
        currentIndex: _selectedIndex,
        onTap: _itemTapped,
        selectedItemColor: Colors.blue, // Active item color
        unselectedItemColor: Colors.grey, // Inactive item color
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: "Markets"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Portfolio"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
