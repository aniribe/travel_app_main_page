import 'package:flutter/cupertino.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = TimelineTween<AnimationProperties>()
      ..addScene(begin: 0.milliseconds, end: 500.milliseconds)
          .animate(AnimationProperties.opacity, tween: 0.0.tweenTo(1.0))
      ..addScene(begin: 0.milliseconds, end: 500.milliseconds)
          .animate(AnimationProperties.translateY, tween: (-40.0).tweenTo(0.0));

    return PlayAnimation<TimelineValue<AnimationProperties>>(
      tween: tween,
      duration: tween.duration,
      delay: Duration(milliseconds: (500 * delay).round()),
      child: child,
      builder: (context, child, animation) {
        return Opacity(
          opacity: animation.get(AnimationProperties.opacity),
          child: Transform.translate(
            offset: Offset(0.0, animation.get(AnimationProperties.translateY)),
            child: child,
          ),
        );
      },
    );
  }
}

enum AnimationProperties { opacity, translateY }
