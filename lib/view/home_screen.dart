import 'package:flutter/material.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Home Screen',
          style: TextStyle(color: AppColors.unselectedItemColor),
        ),
      ],
    );
  }
}
