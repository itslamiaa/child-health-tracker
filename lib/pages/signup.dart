import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController firstName = TextEditingController(); // this is needed for backend manipulation and other stuff
    TextEditingController lastName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneNmbr = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirm = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/wallpaper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 165),
              // create account + phrase
              Text(
                'Create Account',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Text(
                'Enter your Personal Data',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              // text fields idk how many

              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
