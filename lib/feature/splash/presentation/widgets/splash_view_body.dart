import 'package:HBuss/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../onBoarding/presentation/onBoarding.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    fadingAnimation =
        Tween<double>(begin: 0.5, end: 1.0).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Add Center widget here
      child: Container(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Align items at the center vertically
          children: [
            FadeTransition(
              opacity: fadingAnimation!,
              child: Text(
                'HBuss',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: hSecondColor,
                ),
              ),
            ),
            Image.asset('assets/images/a_dot_burr.jpeg'),
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 6), () {
      Get.to(() => onBoarding(), transition: Transition.fade);
    });
  }
}
