import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripzy_mobile/constants/app_colors.dart';
import 'package:tripzy_mobile/controller/auth_controller.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Image.asset('assets/images/logo.png', width: 120, height: 120),
              const SizedBox(height: 24),
              const Text(
                'Your Smart\nTravel\nCompanion.',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
              // const Spacer(),
              // _buildSignInButton(
              //   'Continue with Apple',
              //   'assets/images/apple_logo.png',
              //   () => controller.signInWithApple(),
              //   Colors.black,
              //   Colors.white,
              // ),
              // const SizedBox(height: 16),
              // _buildSignInButton(
              //   'Continue with Email',
              //   'assets/images/email_icon.png',
              //   () => controller.signInWithEmail(),
              //   Colors.white,
              //   Colors.black,
              // ),
              const SizedBox(height: 380),
              _buildSignInButton(
                'Continue with Google',
                'assets/images/google_logo.webp',
                () => controller.signInWithGoogle(),
                Colors.white,
                Colors.black,
              ),
              const SizedBox(height: 24),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By signing up, you agree to our terms and ',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: 'privacy Policy',
                        style: TextStyle(
                          color: AppColors.selectedItemColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const TextSpan(text: '.'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton(
    String text,
    String iconPath,
    VoidCallback onPressed,
    Color backgroundColor,
    Color textColor,
  ) {
    return Obx(
      () => ElevatedButton(
        onPressed: controller.isLoading.value ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: controller.isLoading.value
            ? SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(iconPath, width: 24, height: 24),
                  const SizedBox(width: 12),
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
