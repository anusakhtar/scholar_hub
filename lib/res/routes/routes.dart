import 'package:scholarship_hub/View/HomeScreen/Screens/ExploreScreen/explore_screen.dart';
import 'package:scholarship_hub/View/HomeScreen/home.dart';
import 'package:scholarship_hub/View/LoginScreen/login_screen.dart';
import 'package:scholarship_hub/View/PersonalDetailScreen/personal_deatil_screen.dart';
import 'package:scholarship_hub/View/ScholarshipStatusScreen/scholarship_status_screen.dart';
import 'package:scholarship_hub/View/SignupScreen/signup_screen.dart';
import 'package:scholarship_hub/View/Splashscreen/splash_screen.dart';
import 'package:scholarship_hub/res/routes/route_name.dart';
import 'package:get/get.dart';
import '../../View/CountrriesListScreen/countries_list_screen.dart';
import '../../View/DoneScreen/done_screen.dart';
import '../../View/EducationDetailsScreen/education_details_screen.dart';
import '../../View/NotificationScreen/notification_screen.dart';
import '../../View/ScholarshipDetailScreen/scholarship_detail_screen.dart';
import '../../View/WelcomeScreen/welcome_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: RouteName.signupScreen,
          page: () => const SignupScreen(),
        ),
        GetPage(
          name: RouteName.welcomeScreen,
          page: () => const WelcomeScreen(),
        ),
        GetPage(
          name: RouteName.personalDetailsScreen,
          page: () => const PersonalDetailScreen(),
        ),
        GetPage(
          name: RouteName.doneScreen,
          page: () => const DoneScreen(),
        ),
        GetPage(
          name: RouteName.educationDetailsScreen,
          page: () => const EducationDetailsScreen(),
          transition: Transition.downToUp,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: RouteName.homeScreen,
          page: () => const Home(),
          // transition: Transition.downToUp,
          // transitionDuration: Duration(milliseconds: 500),
        ),
        GetPage(
          name: RouteName.notificationScreen,
          page: () => const NotificationScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: RouteName.scholarshipStatusScreen,
          page: () => const ScholarshipStatusScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: RouteName.scholarshipDetailScreen,
          page: () => const ScholarshipDetailScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 350),
        ),
        GetPage(
          name: RouteName.countriesListScreen,
          page: () => const CountryList(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 350),
        ),
        GetPage(
          name: RouteName.exploreScreen,
          page: () => const ExploreScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 350),
        ),
      ];
}
