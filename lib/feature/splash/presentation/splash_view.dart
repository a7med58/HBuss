// ignore_for_file: library_private_types_in_public_api

import 'package:HBuss/core/constants.dart';
import 'package:flutter/material.dart';
import 'widgets/splash_view_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: hMainColor,
      body: SplashViewBody(),
    );
  }
}
