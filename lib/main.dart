import 'package:flutter/material.dart';
import 'package:gym_app/screens/onboarding_screen.dart';

void main() => runApp(const GymApp());

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white70,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
