import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // top image
            Image.asset('assets/images/Dante.jpg'),
            // welcome text + another text beneath it
            Text(
              'Welcome!',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  )),
            ),

            // another image

            // signup button

            // login button
          ],
        ),
      ),
    );
  }
}
