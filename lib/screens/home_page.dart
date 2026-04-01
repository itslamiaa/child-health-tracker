import 'package:child_tracker/screens/home_content.dart';
import 'package:child_tracker/screens/log_track.dart';
import 'package:child_tracker/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomeContent(),
    LogTrack(),
    Settings(),
    Settings(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // navigation bar
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE0C3FC), // Soft Purple (Top Left)
              Color(0xFFFDFCFB), // Off-white/Peach (Center/Bottom Right)
            ],
          ),
        ),
        child: SafeArea(child: _pages[_currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        // <-- ADDED: selected color
        unselectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.poppins(),
        // <-- ADDED: unselected color
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              height: 20,
              color: Colors.black,
            ),
            activeIcon: Image.asset(
              'assets/icons/home.png',
              height: 20,
              color: Colors.deepPurple,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/notes.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/notes.png',
              height: 20,
              color: Colors.deepPurple,
            ),

            label: 'log',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/add.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/add.png',
              height: 20,
              color: Colors.deepPurple,
            ),

            label: 'Add Child',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/calendar.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/calendar.png',
              height: 20,
              color: Colors.deepPurple,
            ),

            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/settings.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/settings.png',
              height: 20,
              color: Colors.deepPurple,
            ),
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
