import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tripzy_mobile/controller/auth_controller.dart';
import 'package:tripzy_mobile/routes/app_routes.dart';
import 'package:tripzy_mobile/services/auth_service.dart';
import 'package:tripzy_mobile/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();

  // Initialize services
  await Get.putAsync(() async => AuthService());

  // Initialize controllers
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tripzy',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: MyAppRoutes.splashScreen,
      getPages: MyAppRoutes.pages,
    );
  }
}
