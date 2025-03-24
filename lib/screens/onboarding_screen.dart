// screens/onboarding_screen.dart

import '../screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19.0),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Welcome",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset('images/splash1.png', width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Shop Now",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset('images/splash2.png', width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset('images/splash3.png', width: 200),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          ),
        );
      },
      onSkip: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
             return LoginScreen();
            },
          ),
        );
      },
      showSkipButton: true,
      showDoneButton: true,
      showBackButton: false,
      showNextButton: false,
      done: const Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      skip: const Text(
        'Passer',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      dotsDecorator: DotsDecorator(
        size: Size.square(10.0),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
        activeColor: Color(0xFFEF6969),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
