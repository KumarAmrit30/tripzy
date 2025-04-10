import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';
import 'package:tripzy_mobile/controller/intro_screen_controller.dart';

class IntroScreen extends GetView<IntroScreenController> {
  const IntroScreen({super.key});

  Widget _buildPage(String title, String imagePath, String description) {
    final bool isFirstPage = imagePath == 'assets/images/onboarding1.png';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            padding: isFirstPage
                ? EdgeInsets.zero
                : const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.unselectedItemColor,
                    height: 1.2,
                  ),
                ),
                if (description.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.unselectedItemColor.withOpacity(0.8),
                      height: 1.5,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              _buildPage(
                'Plan, manage, and\nexperience group\ntrips effortlessly.',
                'assets/images/onboarding1.png',
                '',
              ),
              _buildPage(
                'Discover the\nwonderful world!',
                'assets/images/onboarding2.png',
                'We believe that traveling around the world shouldn\'t be hard.',
              ),
              _buildPage(
                'Your dream holiday\nis waiting',
                'assets/images/onboarding3.png',
                'Find your favorite vacation for your story around the globe and make your trip meaningful.',
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: controller.currentPage.value == index
                              ? AppColors.selectedItemColor
                              : AppColors.unselectedItemColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Obx(
                    () => ElevatedButton(
                      onPressed: controller.nextPage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.selectedItemColor,
                        minimumSize: const Size(double.infinity, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        controller.currentPage.value < 2
                            ? 'Next →'
                            : 'Get Started →',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
