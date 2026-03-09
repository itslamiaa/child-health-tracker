import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  String titlename;
  TitleWidget({
    required this.titlename,
  }); // required means that the user has to enter the titlename

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.purple,
        child: Text(
          titlename,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
