import 'package:flutter/material.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Explore Screen',
          style: TextStyle(color: AppColors.unselectedItemColor),
        ),
      ],
    );
  }
}
