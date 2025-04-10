import 'package:flutter/material.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Profile Screen',
          style: TextStyle(color: AppColors.unselectedItemColor),
        ),
      ],
    );
  }
}
