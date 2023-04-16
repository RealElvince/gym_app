import 'package:flutter/material.dart';
import 'package:gym_app/screens/onboarding_screen.dart';

class CustomizedNavBar extends StatelessWidget {
  const CustomizedNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 25.0, vertical: 10.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          // Home
          BottomNavBar(
            imagePath: 'images/home.png',
            textData: 'Home',
            isColorActive: true,
          ),

          // mediation
          BottomNavBar(imagePath: 'images/gym.png', textData: 'Meditation'),
          // settings
          BottomNavBar(
            imagePath: 'images/settings.png',
            textData: 'Settings',
          ),
        ],
      ),
    );
  }
}
