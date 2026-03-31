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
  List <Widget> _pages = [HomeContent(), Profile(), Settings(),Settings(),Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffff),
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
            icon: Image.asset('assets/icons/notes.png',height: 20,),
            label: 'log',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/add.png',height: 20,),
            label: 'Children List',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/calendar.png',height: 20,),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/settings.png',height: 20,),
            label: 'Settings',
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
