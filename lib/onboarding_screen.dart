import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:til_app/home_page.dart';
import 'package:til_app/intro_screens/intro_page1.dart';
import 'package:til_app/intro_screens/intro_page2.dart';
import 'package:til_app/intro_screens/intro_page3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [IntroPage1(), IntroPage2(), IntroPage3()],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text(
                        'skip',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                          child: Text('done',
                              style: Theme.of(context).textTheme.headlineSmall))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('next',
                              style: Theme.of(context).textTheme.headlineSmall))
                ],
              ))
        ],
      ),
    );
  }
}
