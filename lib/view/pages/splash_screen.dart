import 'package:lotsoApp/components/done_button.dart';
import 'package:lotsoApp/components/next_button.dart';
import 'package:lotsoApp/components/previous_button.dart';
import 'package:lotsoApp/view/pages/intro_screen/intro_page_1.dart';
import 'package:lotsoApp/view/pages/intro_screen/intro_page_2.dart';
import 'package:lotsoApp/view/pages/intro_screen/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          //dot indicator
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // previous button
                PreviousButton(controller: _controller),
                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                // next button
                isLastPage
                    ? const DoneButton()
                    : NextButton(controller: _controller)
              ],
            ),
          )
        ],
      ),
    );
  }
}
