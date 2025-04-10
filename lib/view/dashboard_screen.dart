import 'package:flutter/material.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';
import 'package:tripzy_mobile/constants/app_strings.dart';
import 'package:tripzy_mobile/controller/dashboard_screen_controller.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return AppStrings.home;
      case 1:
        return AppStrings.myTrips;
      case 2:
        return AppStrings.addTrip;
      case 3:
        return AppStrings.explore;
      case 4:
        return AppStrings.profile;
      default:
        return '';
    }
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    DashBoardScreenController controller,
  ) {
    return AppBar(
      title: Obx(() {
        if (controller.selectedIndex.value == 0) {
          // Home screen custom AppBar content
          return Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/default_avatar.jpg'),
                // TODO: Replace with actual user image
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    'Vani kapoor', // TODO: Replace with actual user name
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.selectedItemColor,
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return Text(_getTitle(controller.selectedIndex.value));
        }
      }),
      backgroundColor: AppColors.bottomNavigationBarColor,
      foregroundColor: AppColors.selectedItemColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final DashBoardScreenController controller = Get.put(
      DashBoardScreenController(),
    );
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: _buildAppBar(context, controller),
      body: Obx(
        () => Center(child: controller.screens[controller.selectedIndex.value]),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: AppColors.bottomNavigationBarColor,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.changeIndex(index),
          selectedItemColor: AppColors.selectedItemColor,
          unselectedItemColor: AppColors.unselectedItemColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppStrings.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined),
              label: AppStrings.myTrips,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_rounded),
              label: AppStrings.addTrip,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: AppStrings.explore,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppStrings.profile,
            ),
          ],
        ),
      ),
    );
  }
}
