import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .08,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
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
    );
  }
}
