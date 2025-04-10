import 'package:get/get.dart';
import 'package:tripzy_mobile/routes/app_routes.dart';
import 'package:tripzy_mobile/services/auth_service.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreenController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  final _storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // Show splash for 3 seconds then navigate
    Future.delayed(const Duration(seconds: 3), () {
      checkAuthAndNavigate();
    });
  }

  void checkAuthAndNavigate() {
    final hasSeenIntro = _storage.read('has_seen_intro') ?? false;

    if (!hasSeenIntro) {
      Get.offAllNamed(MyAppRoutes.introScreen);
    } else if (_authService.isUserLoggedIn()) {
      Get.offAllNamed(MyAppRoutes.dashBoardScreen);
    } else {
      Get.offAllNamed(MyAppRoutes.authScreen);
    }
  }
}
