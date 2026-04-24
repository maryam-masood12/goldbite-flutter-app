import 'package:flutter/material.dart';
// import 'screens/splash_screen.dart';
// import 'screens/onboarding_screen_1.dart';
// import 'screens/onboarding_screen_2.dart';
import 'screens/onboarding_screen_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      // home: OnboardingScreen1(),
      // home: OnboardingScreen2(),
       home: OnboardingScreen3(),
      
      
    );
  }
}
