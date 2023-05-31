import 'package:flutter/material.dart';
import './widgets/onBoardingBody.dart';

// ignore: camel_case_types
class onBoarding extends StatelessWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: onBoardingBody(),
    );
  }
}
