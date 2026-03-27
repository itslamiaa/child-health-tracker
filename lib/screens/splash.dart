import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
            alignment: Alignment(0, 0),
            child: Image.asset('assets/images/baby.png', height: 100),
          ),
        ],
      ),
    );
  }
}
