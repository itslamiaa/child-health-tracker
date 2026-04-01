import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogTrack extends StatefulWidget {
  const LogTrack({super.key});

  @override
  State<LogTrack> createState() => _LogTrackState();
}

class _LogTrackState extends State<LogTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Log/Track', style: GoogleFonts.poppins()),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
    );
  }
}
