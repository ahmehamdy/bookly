import 'package:book_app/core/utils/asset_data.dart';
import 'package:book_app/core/utils/functions/sliding_animation_function.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    iniSlidingAnimation(
        vsync: this,
        satController: (controller) {
          animationController = controller;
        },
        satAnimation: (animation) {
          slidingAnimation = animation;
        },
        beginOffset: const Offset(-2, 0));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //animationController.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, bottom: 30, left: 20, right: 20),
      child: Row(
        children: [
          SlideTransition(
              position: slidingAnimation,
              child: Image.asset(
                Assetdata.Logo,
                height: 20,
              )),
          const Spacer(),
          const Icon(FontAwesome.magnifying_glass_solid)
        ],
      ),
    );
  }
}
