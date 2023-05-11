import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sas/register/auth_screen.dart';

class Splash extends StatelessWidget {
  static const String routeName = 'Splash';

  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
                  "images/logo.png",
                ),
            ),
          ),
        ),
        nextScreen: const AuthPage());
  }
}
