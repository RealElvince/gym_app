import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedGridView extends StatelessWidget {
  final String description;
  final String imagePath;
  void Function()? onTap;
  CustomizedGridView(
      {super.key,
      required this.description,
      required this.imagePath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 150,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 15.0,
            ),
            Image.asset(
              imagePath,
              height: 100.0,
              width: 150.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  description,
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
