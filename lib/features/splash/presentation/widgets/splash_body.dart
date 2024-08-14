import 'package:book_app/core/utils/app_routers.dart';
import 'package:book_app/core/utils/functions/sliding_animation_function.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types
class Splash_body extends StatefulWidget {
  const Splash_body({super.key});

  @override
  State<Splash_body> createState() => _Splash_bodyState();
}

// ignore: camel_case_types
class _Splash_bodyState extends State<Splash_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    iniSlidingAnimation(
        vsync: this,
        satController: (controller) {
          animationController = controller;
        },
        satAnimation: (animation) {
          slidingAnimation = animation;
        },beginOffset: const Offset(0, 2));
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("images/Logo.png"),
        const SizedBox(
          height: 4,
        ),
        SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read free Books",
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
