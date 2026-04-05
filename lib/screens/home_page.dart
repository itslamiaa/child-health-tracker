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
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.poppins(),
        unselectedLabelStyle: GoogleFonts.poppins(),
        backgroundColor: Colors.blue.shade50,
        items: [
        //home
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
          //log
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/notes.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/notes.png',
              height: 20,
              color: Colors.deepPurple,
            ),

            label: 'log',
          ),
          // add child
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/add.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/add.png',
              height: 20,
              color: Colors.deepPurple,
            ),

            label: 'Add Child',
          ),
          //appointments
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/calendar.png', height: 20),
            activeIcon: Image.asset(
              'assets/icons/calendar.png',
              height: 20,
              color: Colors.deepPurple,
            ),

            label: 'Appointments',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          }
          );
        },
      ),
    );
  }
}
