import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

import '../../../../../../res/AppAssets/app_assets.dart';
import '../../../../../../res/routes/route_name.dart';

class AppliedCard extends StatelessWidget {
  const AppliedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isSmallScreen = size.width < 600;
    final double imageWidth = isSmallScreen ?size.width * 0.4 : size.width * 0.2;
    final bool isTabletScreen = size.width >= 600 && size.width <1281;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10 : 18, vertical: isSmallScreen ? 5 : 7),
      padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10 : 15, vertical: isSmallScreen ? 10 : 15),

      decoration: BoxDecoration(
        color: context.customTheme.cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(AppAssets.status, width: imageWidth, fit: BoxFit.fill),
              ),
              SizedBox(width: isSmallScreen ? 10 : 20),
              Expanded(
                flex: 2,
                child: AppText(
                  text: 'Medhaavi Engineering Scholarship Program Medhaavi Engineering Scholarship Program Medhaavi Engineering Scholarship Program',
                  fontWeight: FontWeight.w400,
                  fontSize: isTabletScreen?25:isSmallScreen ? 10 : 12,
                ),
              ),
            ],
          ),
          SizedBox(height: isSmallScreen ? 10 : 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: CustomButton(
                  textColor: Colors.white,
                  onTap: () {},
                  fontSize: isSmallScreen ? 10 : 12,
                  label: "View details",
                  height: isSmallScreen ? 30 : 36,
                ),
              ),
              SizedBox(width: isSmallScreen ? 10 : 20),
              Expanded(
                flex: 2,
                child: CustomButton(
                  textColor: Colors.white,
                  onTap: () {
                    Get.toNamed(RouteName.scholarshipStatusScreen);
                  },
                  fontSize: isSmallScreen ? 10 : 12,
                  label: "Check Status",
                  height: isSmallScreen ? 30 : 36,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
