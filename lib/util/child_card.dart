import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChildCard extends StatelessWidget {

  final String child;

  ChildCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
              ),
            ),
            SizedBox(width: 100,),
            Text(child,style: GoogleFonts.poppins(fontSize:20 ),),
          ],
        ),
      ),
    );
  }
}
