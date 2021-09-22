import 'package:flutter/cupertino.dart';
import 'package:travel_app_main_page/animation/fade_animation.dart';

class AppTitle extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const AppTitle(
      {required this.text,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
