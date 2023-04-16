import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app/components/search_bar.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  'images/6.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Text(
                    'Meditation',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '4-10 MIN course',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Meditation is not evasion; it is a serene encounter with reality.',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    child: const SearchBar(),
                  ),
                  Wrap(
                    spacing: 10,
                    children: [
                      SessionWrapCard(
                          sessionNum: 1, isDone: true, onTap: () {}),
                      SessionWrapCard(sessionNum: 2, onTap: () {}),
                      SessionWrapCard(sessionNum: 3, onTap: () {}),
                      SessionWrapCard(sessionNum: 4, onTap: () {}),
                      SessionWrapCard(sessionNum: 6, onTap: () {}),
                      SessionWrapCard(sessionNum: 7, onTap: () {}),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('Meditation'),
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Row(
                          children: [
                            Image.asset('images/5.png'),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Basic Style'),
                                  Text('Start your Practice'),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.lock),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SessionWrapCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function()? onTap;
  SessionWrapCard({
    required this.sessionNum,
    this.isDone = false,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: contraints.maxWidth / 2 - 10,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(color: Colors.white),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: isDone ? Colors.teal : Colors.white,
                        border: Border.all(color: Colors.grey.shade700),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.play_arrow,
                          color: isDone ? Colors.white : Colors.teal),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Session $sessionNum',
                      style: GoogleFonts.aBeeZee(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
