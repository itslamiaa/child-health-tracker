import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldCard extends StatelessWidget {

  final String hintText;

  FieldCard({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Opacity(
            opacity: 0.7,
            child: TextField(
              //controller: city,
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
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.grey[900]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
