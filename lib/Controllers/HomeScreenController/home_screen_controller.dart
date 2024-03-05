import 'package:get/get.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/AppliedScreen/applied_screen.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/ExploreScreen/explore_screen.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/Homescreen/home_screen.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/ProfileScreen/profile_screen.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/SavedScreen/saved_screen.dart';

class HomeScreenController extends GetxController {
  RxInt myCurrentIndex = 0.obs;
  final pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const AppliedScreen(),
    const SaveScreen(),
    const ProfileScreen(),
  ];

  void onTap(int index) {
    myCurrentIndex.value = index;
  }
}
