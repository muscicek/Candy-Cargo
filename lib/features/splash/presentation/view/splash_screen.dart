import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:candy_cargo/features/onboarding/presentation/view/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      backgroundColor: Colors.white,
      nextScreen: const OnboardingScreen(),
      duration: const Duration(seconds: 2),
      splashScreenBody: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("assets/img/splash_screen/splash_screen_right_top_elips.png"),
          ),
          const Spacer(),
          Image.asset(
            "assets/img/splash_screen/splash_screen_logo.png",
            width: 247.w,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/img/splash_screen/splash_screen_left_bottom_elips.png"),
          )
        ],
      ),
    );
  }
}
