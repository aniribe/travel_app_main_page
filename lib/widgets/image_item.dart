import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_main_page/config/app_colors.dart';
import 'package:travel_app_main_page/config/data.dart';

class ImageItem extends StatelessWidget {
//  final String image;
//  final String title;
  final Item imageItem;

  ImageItem({required this.imageItem});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imageItem.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: mainGradient,
              )),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              imageItem.title,
              style: TextStyle(color: primaryWhite, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
