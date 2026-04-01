import 'dart:async';

import 'package:child_tracker/intro_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? _timer;

  void initState() {
    super.initState();
    // TODO: splash logic
    _timer = Timer(Duration(seconds: 3), () {
      // navigation logic
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/aura.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 300),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('assets/images/heart.png'),
                ),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                'BabyCare',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*alignment: Alignment(0, 0),
decoration: BoxDecoration(
gradient: LinearGradient(
begin: AlignmentGeometry.topRight,
end: AlignmentGeometry.bottomCenter,
colors: [Color(0xFFa2cfe8), Color(0xFFf5c1eb)],
),
),*/
