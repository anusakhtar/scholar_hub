import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/AppColors/app_colors.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../res/CommonWidgets/AppText/app_text.dart';
import '../../res/routes/route_name.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(RouteName.loginScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 288,
              child: Image.asset(AppAssets.splashIcon),
            ),
            const AppText(
              text: 'Scholar Hub',
              fontSize: 48,
              fontWeight: FontWeight.w700,
              textColor: AppColors.primaryColor,
            ),
            const AppText(
                text: 'Where Dreams Come True',
                fontSize: 16,
                textColor: AppColors.greyColor)
          ],
        ),
      ),
    );
  }
}
