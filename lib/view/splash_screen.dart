import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripzy_mobile/controller/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}
