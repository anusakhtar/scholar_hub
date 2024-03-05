import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../res/AppColors/app_colors.dart';
import '../../res/routes/route_name.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppText(
                text: 'Welcome to Scholar hub',
                fontSize: isTablet ? 36 : 24,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                AppAssets.welcome,
                height: isTablet ? 300 : 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 30,
              ),
              AppText(
                textAlign: TextAlign.justify,
                text:
                "We're excited to help you find the perfect scholarships for you. "
                    "To get started, please fill in a few basic details about yourself. "
                    "This will help us recommend the best matching scholarships that fit "
                    "your needs.",
                fontSize: isTablet ? 20 : 14,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    label: "I'll do later",
                    width: isTablet ? 200 : 136,
                    backgroundColor: Colors.transparent,
                    borderColor: AppColors.greyColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    onTap: () {
                      Get.toNamed(RouteName.personalDetailsScreen);
                    },
                    label: "Get started",
                    width: isTablet ? 200 : 136,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
