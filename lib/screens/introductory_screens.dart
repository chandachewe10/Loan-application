import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../constants/colors.dart';

class IntroductoryScreens extends StatelessWidget {
  const IntroductoryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: kPrimaryColor,
      imagePadding: EdgeInsets.zero,
    );

    List<PageViewModel>? listPagesViewModel = [
      PageViewModel(
        title: "Welcome to Financial Quick Loan",
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Get the financial support you need, hassle-free.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                // On button pressed
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16), // Button border radius
                ),
              ),
              child: const Text("Get Started!"),
            )
          ],
        ),
        image: SvgPicture.asset('assets/images/introductory1.svg'),
        decoration: pageDecoration,
        useScrollView: true,
      ),
      PageViewModel(
        title: "Quick and Easy Application.",
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Complete your loan application in few minutes.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                // On button pressed
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16), // Button border radius
                ),
              ),
              child: const Text("Get Started!"),
            )
          ],
        ),
        image: SvgPicture.asset('assets/images/introductory8.svg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Flexible Loan Options",
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Choose from a range of flexible options.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                // On button pressed
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16), // Button border radius
                ),
              ),
              child: const Text("Get Started!"),
            )
          ],
        ),
        image: SvgPicture.asset('assets/images/introductory6.svg'),
        decoration: pageDecoration,
      )
    ];

    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
          margin: const EdgeInsets.all(30),
          child: IntroductionScreen(
            pages: listPagesViewModel,
            back: const Icon(Icons.arrow_back),
            showBackButton: false,
            next: const Icon(Icons.arrow_forward),
            showNextButton: true,
            skip: const Text('Skip'),
            showSkipButton: true,
            done: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            baseBtnStyle: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onDone: () {
              // On button pressed
            },
            onSkip: () {},
          ),
        ));
  }
}
