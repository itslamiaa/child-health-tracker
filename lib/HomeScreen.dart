import 'package:child_tracker/TitleWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("child tracker"),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Row(
            children: [
              TitleWidget(titlename: 'vegetables'),
              SizedBox(width: 5), // this is the seperator between the widgets
              TitleWidget(titlename: 'meat'),
            ],
          ),
        ],
      ),
    );
  }
}
