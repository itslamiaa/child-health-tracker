import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("User's prefrences", style: GoogleFonts.poppins()),
        backgroundColor: Colors.transparent,
        //automaticallyImplyLeading: false, // makes left icon (leading) disappear
      ),
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
      ),

      /*Container(
        child: Center(
          child: Text('bullshit', style: GoogleFonts.poppins(fontSize: 24)),
        ),
      ),*/
    );
  }
}
