import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'feature/splash/presentation/splash_view.dart';

void main() {
  runApp(const HBuss());
}

class HBuss extends StatelessWidget {
  const HBuss({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
