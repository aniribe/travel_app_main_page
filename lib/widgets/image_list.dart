import 'package:flutter/cupertino.dart';
import 'package:travel_app_main_page/animation/fade_animation.dart';
import 'package:travel_app_main_page/config/data.dart';
import 'image_item.dart';

class ImageList extends StatelessWidget {
  final List<Item> imageList;

  ImageList({required this.imageList});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1,
      child: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:
              imageList.map((item) => ImageItem(imageItem: item)).toList(),
        ),
      ),
    );
  }
}
