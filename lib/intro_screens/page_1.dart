import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Column(
        children: [
          SizedBox(height:100 ,),
          Image.asset('assets/images/megaphone.png',height: 100)],
      )
    );
  }
}
