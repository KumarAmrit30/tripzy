import 'package:flutter/material.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';

class MyTripScreen extends StatelessWidget {
  const MyTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Trip Screen',
          style: TextStyle(color: AppColors.unselectedItemColor),
        ),
      ],
    );
  }
}
