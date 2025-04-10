import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tripzy_mobile/view/addTrip_screen.dart';
import 'package:tripzy_mobile/view/auth_screen.dart';
import 'package:tripzy_mobile/view/dashboard_screen.dart';
import 'package:tripzy_mobile/view/home_screen.dart';
import 'package:tripzy_mobile/view/intro_screen.dart';
import 'package:tripzy_mobile/view/myTrip_screen.dart';
import 'package:tripzy_mobile/view/splash_screen.dart';

class MyAppRoutes {
  static const String splashScreen = '/';
  static const String introScreen = '/introScreen';
  // login routing
  static const String authScreen = "/authScreen";
  static const String dashBoardScreen = "/baseScreen";
  static const String homeScreen = "/homeScreen";
  static const String createTripScreen = "/createTripScreen";
  static const String myTripsScreen = "/myTripsScreen";

  static final List<GetPage> pages = [
    //login routing
    GetPage(name: MyAppRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: MyAppRoutes.introScreen, page: () => const IntroScreen()),
    GetPage(
        name: MyAppRoutes.dashBoardScreen, page: () => const DashboardScreen()),
    GetPage(name: MyAppRoutes.authScreen, page: () => const AuthScreen()),
    GetPage(name: MyAppRoutes.homeScreen, page: () => HomeScreen()),
    GetPage(name: MyAppRoutes.createTripScreen, page: () => AddtripScreen()),
    GetPage(name: MyAppRoutes.myTripsScreen, page: () => MyTripScreen()),
  ];
}
