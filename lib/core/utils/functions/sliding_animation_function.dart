import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void iniSlidingAnimation({
  required TickerProvider  vsync,
  required Function(AnimationController) satController,
  required Function(Animation<Offset>) satAnimation,
  required Offset beginOffset,
}) {
    final animationController =
        AnimationController(vsync: vsync, duration: const Duration(seconds: 1));
    final slidingAnimation =
        Tween<Offset>(begin: beginOffset, end: const Offset(0, 0))
            .animate(animationController);
    satController(animationController);
    satAnimation(slidingAnimation);
    animationController.forward();
  }