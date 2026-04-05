import 'package:child_tracker/util/field_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Your Profile", style: GoogleFonts.poppins()),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            // profile card
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.shade200,
                ),
                height: 200,
                width: 500,
                child: Row(
                  // container of profile pic + usernameSizedBox(height: 100,),
                  children: [
                    // profile pic
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset(
                          'assets/images/Dante.jpg',
                          height: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'firstName',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'lastName',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Center(
              child: Text(
                'Your Information:',
                style: GoogleFonts.poppins(fontSize: 20),
              ),
            ),

            FieldCard(hintText: 'First Name'),
            FieldCard(hintText: 'Last Name'),
            FieldCard(hintText: 'Date of Birth'),
            FieldCard(hintText: 'Role'),
            FieldCard(hintText: 'Phone Number'),
            FieldCard(hintText: 'Country'),
            FieldCard(hintText: 'City'),
            SizedBox(height: 10,),
            Center(
              child: Opacity(
                opacity: 0.70,
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment(0, 0),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[100],
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*Column(
children: [
SizedBox(height: 90),
Padding(
padding: const EdgeInsets.only(left: 15, right: 15),
child: Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
color: Colors.blue.shade200,
),
height: 200,
width: 500,
child: Row(
// container of profile pic + usernameSizedBox(height: 100,),
children: [
// profile pic
Padding(
padding: const EdgeInsets.symmetric(horizontal: 20.0),
child: ClipRRect(
borderRadius: BorderRadius.circular(200),
child: Image.asset(
'assets/images/Dante.jpg',
height: 150,
),
),
),
SizedBox(width: 30),
Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'firstName',
style: GoogleFonts.poppins(
fontWeight: FontWeight.bold,
fontSize: 20,
),
),
SizedBox(height: 10),
Text(
'lastName',
style: GoogleFonts.poppins(
fontWeight: FontWeight.bold,
fontSize: 20,
),
),
],
),
],
),
),
),
SizedBox(height: 10),
// fields for user to enter/modify data
Expanded(
child: Column(
children: [
Text(
'Your Information:',
style: GoogleFonts.poppins(fontSize: 20),
),
Expanded(
child: ListView(
children: [

// firstname
FieldCard(hintText: 'First Name'),
// lastname
FieldCard(hintText: 'Last Name'),
// date of birth
FieldCard(hintText: 'Date of Birth'),
// role
FieldCard(hintText: 'Role'),
// phone nbr
FieldCard(hintText: 'Phone Number'),
// country
FieldCard(hintText: 'Country'),
// city
FieldCard(hintText: 'City'),
Opacity(
opacity: 0.70,
child: GestureDetector(
child: Container(
alignment: Alignment(0, 0),
width: 150,
height: 50,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(12),
color: Colors.blue[100],
),
child: Text(
'Save',
style: GoogleFonts.poppins(
textStyle: TextStyle(fontSize: 20),
),
),
),
),
),
],
),
),

],
),
),
],
),*/
