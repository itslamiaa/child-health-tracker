import 'package:child_tracker/intro_screens/page_1.dart';
import 'package:child_tracker/screens/home_content.dart';
import 'package:child_tracker/screens/profile.dart';
import 'package:child_tracker/screens/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List <Widget> _pages = [HomeContent(), Profile(), Settings(),Page1()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // navigation bar
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.deepPurple,  // <-- ADDED: selected color
        unselectedItemColor: Colors.grey,      // <-- ADDED: unselected color
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png',height: 20),
              label: 'home'),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/user.png',height: 20,),
            label: 'Children List',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/settings.png',height: 20,),
            label: 'settings',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/menu-burger.png',height: 20,),
            label: 'profile',
          ),

        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
