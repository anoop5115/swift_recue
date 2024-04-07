import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/signin/views/signinpage.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset(
          'lib/assets/ambulance.png',
          fit: BoxFit.cover,
        ),
        duration: 100,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: SignInPage(),
      ),
    );
  }
}
