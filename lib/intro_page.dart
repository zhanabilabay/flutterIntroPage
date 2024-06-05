import 'package:flutter/material.dart';
import 'package:flutter_intro_page/intro_screens/intro_screen_1.dart';
import 'package:flutter_intro_page/intro_screens/intro_screen_2.dart';
import 'package:flutter_intro_page/intro_screens/intro_screen_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  // controller
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),

          // dot indicator
          Container(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ) ,

        ],
      ),
    );
  }
}
