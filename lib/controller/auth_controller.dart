import 'package:get/get.dart';
import 'package:tripzy_mobile/routes/app_routes.dart';
import 'package:tripzy_mobile/services/auth_service.dart';

class AuthController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  final RxBool isLoading = false.obs;

  Future<void> signInWithGoogle() async {
    try {
      isLoading.value = true;
      final userCredential = await _authService.signInWithGoogle();
      if (userCredential != null) {
        Get.offAllNamed(MyAppRoutes.dashBoardScreen);
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signInWithApple() async {
    // TODO: Implement Apple Sign In
  }

  Future<void> signInWithEmail() async {
    // TODO: Implement Email Sign In
  }

  Future<void> signOut() async {
    await _authService.signOut();
    Get.offAllNamed(MyAppRoutes.authScreen);
  }
}
