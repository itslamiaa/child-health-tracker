import 'package:child_tracker/intro_screens/onboarding_screen.dart';
import 'package:child_tracker/screens/home_page.dart';
import 'package:child_tracker/screens/splash.dart';
import 'package:child_tracker/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
