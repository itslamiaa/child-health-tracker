import 'package:child_tracker/screens//home_page.dart';
import 'package:child_tracker/screens//login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstName =
        TextEditingController(); // this is needed for backend manipulation and other stuff
    TextEditingController lastName = TextEditingController();
    TextEditingController email = TextEditingController();
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
              SizedBox(height: 69),

              // text fields idk how many
              // firstname
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Opacity(
                  opacity: 0.7,
                  child: TextField(
                    controller: firstName,

                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'First Name',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // lastname
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Opacity(
                  opacity: 0.7,
                  child: TextField(
                    controller: lastName,

                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Last Name',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Opacity(
                  opacity: 0.7,
                  child: TextField(
                    controller: email,

                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Opacity(
                  opacity: 0.7,
                  child: TextField(
                    controller: password,

                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // confirm password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Opacity(
                  opacity: 0.7,
                  child: TextField(
                    controller: confirm,

                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm Password',
                      suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              // signup button
              Opacity(
                opacity: 0.70,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => HomePage()),
                    );
                  },
                  child: Container(
                    alignment: Alignment(0, 0),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[100],
                    ),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => Login()),
                      );
                    },
                    child: Text(
                      ' Login',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.pink[300],
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.pink[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
