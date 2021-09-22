import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_main_page/animation/fade_animation.dart';
import 'package:travel_app_main_page/config/app_colors.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 40),
        padding: EdgeInsets.symmetric(vertical: 3),
        decoration: BoxDecoration(
            color: primaryWhite, borderRadius: BorderRadius.circular(50)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: 'Search for cities, places...',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
        ),
      ),
    );
  }
}
