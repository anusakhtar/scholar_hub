import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/View/Splashscreen/splash_screen.dart';
import 'package:scholarship_hub/res/MyTheme/dark_theme.dart';
import 'package:scholarship_hub/res/MyTheme/light_theme.dart';
import 'package:scholarship_hub/res/routes/routes.dart';







void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
      theme: lightTheme(),
      darkTheme: darkTheme(),
    );
  }
}


