import 'package:child_tracker/pages/home_page.dart';
import 'package:child_tracker/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
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
                'Welcome Back!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Text(
                'Login to your account',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(height: 30),
              // another image
              Image.asset('assets/images/baby.jpg', height: 170),

              SizedBox(height: 30),

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

              SizedBox(height: 8),
              // forgot password
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: Row(
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.pink[300],
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.pink[300],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // login button
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
                      color: Colors.pink[100],
                    ),
                    child: Text(
                      'Login',
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
                    "Don't have an Account?",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => Signup()),
                      );
                    },
                    child: Text(
                      ' Signup',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blue[200],
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue[200],
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
    ;
  }
}
