import 'package:child_tracker/screens/home_page.dart';
import 'package:child_tracker/screens/settings.dart';
import 'package:child_tracker/screens/user_profile.dart';
import 'package:child_tracker/util/child_card.dart';
import 'package:flutter/material.dart';

//import 'package:child_tracker/util/category_card.dart';
//import 'package:child_tracker/util/doctor_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0, // to remove shadow when scrolling listview
        /*centerTitle: true,
        leading: Icon(Icons.menu),*/
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFFd5c0f0),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/icons/home.png', height: 20),
                title: Text(
                  'Home Page',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset('assets/icons/settings.png', height: 20),
                title: Text(
                  'Settings',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset('assets/icons/girl.png', height: 20),
                title: Text(
                  'Children List',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset('assets/icons/user.png', height: 20),
                title: Text(
                  'About Us',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        // safeArea makes text be visible not too high
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // side menu icon
                  // name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'User',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // profile
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> UserProfile()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                // split in two
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //animation or picture
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.deepPurple[200],
                      ),
                    ),
                    SizedBox(width: 25),

                    // how do you feel + button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How does your infant feel today?',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Add your child right now',
                            style: GoogleFonts.poppins(fontSize: 15),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Get started',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            //another cards  children list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Children List',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView(
                  children: [
                    ChildCard(child: 'child 1'),
                    ChildCard(child: 'child 2'),
                    ChildCard(child: 'child 3'),
                    ChildCard(child: 'child 4'),
                    ChildCard(child: 'child 5'),
                    ChildCard(child: 'child 6'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
