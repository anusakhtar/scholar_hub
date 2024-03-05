import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import 'package:scholarship_hub/res/routes/route_name.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      width: 196,
      decoration: BoxDecoration(
        color: context.customTheme.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Image.asset(AppAssets.card1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppText(
                text: 'Award',
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
              AppText(
                text: 'Up to INR 75,000/-',
                fontSize: 12,
              ),
              SizedBox(
                height: 3,
              ),
              AppText(
                text: 'UEligibility',
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
              AppText(
                text: 'UG & Post Graduate Students',
                fontSize: 12,
              ),
            ]),
          ),
          const Spacer(),
          CustomButton(
            textColor: Colors.white,
            label: 'View Details',
            height: 30,
            width: 150,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            onTap: () {
              Get.toNamed(RouteName.scholarshipDetailScreen);
            },
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
