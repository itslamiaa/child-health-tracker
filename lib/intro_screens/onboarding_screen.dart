import 'package:child_tracker/intro_screens/page_1.dart';
import 'package:child_tracker/intro_screens/page_2.dart';
import 'package:child_tracker/intro_screens/page_3.dart';
import 'package:child_tracker/screens//welcome.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller to keep track of what page we're one
  late PageController _controller = PageController();

  // keep track if we're on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // pageview
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [Page1(), Page2(), Page3()],
          ),
          // dot indicator
          Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('skip'),
                ),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                // next or get started
                onLastPage // this is like an if statement
                    ? GestureDetector(
                        // onLastPage == true
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Welcome();
                              },
                            ),
                          );
                        },
                        child: Text('done'),
                      )
                    : GestureDetector(
                        // otherwise
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text('next'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
