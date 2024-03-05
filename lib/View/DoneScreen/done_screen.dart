import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../res/routes/route_name.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(AppAssets.done),
                const SizedBox(height: 10,),
                const AppText(
                  text: 'Congratulations!',
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                ),
                const SizedBox(height: 20,),
                const AppText(
                    textAlign: TextAlign.center,
                    text: 'You have completed the first step towards your  educational goals.',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                const Spacer(),
                CustomButton(textColor: Colors.white,label: 'Done',onTap: (){   Get.toNamed(RouteName.homeScreen);},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
