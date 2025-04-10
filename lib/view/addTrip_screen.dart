import 'package:flutter/material.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';

class AddtripScreen extends StatelessWidget {
  const AddtripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Add Trip Screen',
          style: TextStyle(color: AppColors.unselectedItemColor),
        ),
      ],
    );
  }
}
