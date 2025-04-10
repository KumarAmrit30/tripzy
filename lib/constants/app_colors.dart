import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color bottomNavigationBarColor = const Color(0xFF525252);

  static Color selectedItemColor = const Color(0xFF0DD354);

  static Color unselectedItemColor = const Color.fromARGB(255, 255, 255, 255);

  static Color grey = const Color(0xFF525252);
}

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}
