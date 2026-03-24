import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
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
              // welcome text + another text beneath it
              Text(
                'Welcome!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Text(
                'Make your child more happy',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(height: 55,),
              // another image
              Image.asset('assets/images/smiley.jpg',height: 250,),

              SizedBox(height: 75,),
              // signup button

              Opacity(
                opacity: 0.70,
                child: Container(
                  alignment: Alignment(0, 0),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[100]
                  ),
                  child: Text('Sign Up',style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 20),
                  )),

                ),
              ),

              SizedBox(height: 25,),
              // login button
              Opacity(
                opacity: 0.70,
                child: Container(
                  alignment: Alignment(0, 0),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.pink[100]
                  ),
                  child: Text('Login',style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 20),
                  )),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
