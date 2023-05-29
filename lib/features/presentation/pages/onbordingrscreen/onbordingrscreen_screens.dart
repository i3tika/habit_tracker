import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:habit_tracker/features/presentation/pages/onbordingrscreen/intro_widget/intro_widget_one.dart';
import 'package:habit_tracker/features/presentation/pages/onbordingrscreen/intro_widget/intro_widget_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../tracket_screen/tracker_screens.dart';
import 'intro_widget/intro_widget_three.dart';

class OnbordingrScreen extends StatefulWidget {
  const OnbordingrScreen({super.key});

  @override
  State<OnbordingrScreen> createState() => _OnbordingrScreenState();
}

class _OnbordingrScreenState extends State<OnbordingrScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              InroWidgetOne(),
              InroWidgetTwo(),
              InroWidgetThree(),
            ],
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
                    child: Text('Skip')),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackerScreens()));
                          // _controller.nextPage(
                          //     duration: Duration(milliseconds: 500),
                          //     curve: Curves.easeIn);
                        },
                        child: Text('end'))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
