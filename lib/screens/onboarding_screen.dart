import 'package:flutter/material.dart';
import 'package:gym_app/components/bottom_navbar.dart';
import 'package:gym_app/components/gridview_containers.dart';
import 'package:gym_app/screens/description_screen.dart';
import 'package:iconly/iconly.dart';

import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomizedNavBar(),
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  // Category Icon
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      child: const Icon(
                        IconlyLight.category,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Greetings
                  Text(
                    'Good evening ,Elvo.',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Container(
                    height: size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              IconlyLight.search,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'search'),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Expanded(
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 0.90,
                      crossAxisCount: 2,
                      children: [
                        CustomizedGridView(
                          onTap: () {},
                          imagePath: 'images/3.png',
                          description: 'Meal Recommendation',
                        ),
                        CustomizedGridView(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const DescriptionScreen();
                              }),
                            );
                          },
                          imagePath: 'images/2.png',
                          description: 'Muscles Weight Lifting',
                        ),
                        CustomizedGridView(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const DescriptionScreen();
                              }),
                            );
                          },
                          imagePath: 'images/5.png',
                          description: 'Meditation',
                        ),
                        CustomizedGridView(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) {
                            //     return const DescriptionScreen();
                            //   }),
                            // );
                          },
                          imagePath: 'images/1.png',
                          description: 'Yoga',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String textData;
  final bool isColorActive;
  final String imagePath;
  const BottomNavBar({
    this.isColorActive = false,
    required this.imagePath,
    required this.textData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          //Home
          Image.asset(
            imagePath,
            height: 30,
            color: isColorActive ? Colors.teal : Colors.black,
          ),
          Text(
            textData,
            style: GoogleFonts.aBeeZee(
                color: isColorActive ? Colors.teal : Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
