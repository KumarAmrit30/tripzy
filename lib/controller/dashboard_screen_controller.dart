import 'package:tripzy_mobile/view/addTrip_screen.dart';
import 'package:tripzy_mobile/view/explore_screen.dart';
import 'package:tripzy_mobile/view/home_screen.dart';

import 'package:get/get.dart';
import 'package:tripzy_mobile/view/myTrip_screen.dart';
import 'package:tripzy_mobile/view/profile_screen.dart';

class DashBoardScreenController extends GetxController {
  final List screens = [
    HomeScreen(),
    MyTripScreen(),
    AddtripScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  final selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}