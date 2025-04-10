import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tripzy_mobile/routes/app_routes.dart';
import 'package:tripzy_mobile/services/auth_service.dart';

class IntroScreenController extends GetxController {
  final PageController pageController = PageController();
  final currentPage = 0.obs;
  final AuthService _authService = Get.find<AuthService>();
  final _storage = GetStorage();

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Mark intro as seen
      _storage.write('has_seen_intro', true);

      // Navigate to auth or dashboard based on login state
      if (_authService.isUserLoggedIn()) {
        Get.offAllNamed(MyAppRoutes.dashBoardScreen);
      } else {
        Get.offAllNamed(MyAppRoutes.authScreen);
      }
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
