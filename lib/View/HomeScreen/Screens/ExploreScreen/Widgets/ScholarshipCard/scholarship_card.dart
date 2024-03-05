import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

class ScholarshipCard extends StatelessWidget {
  const ScholarshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isSmallScreen = size.width < 600;
    final double cardHeight = isSmallScreen ? 200 : 300;
    final bool isTabletScreen = size.width >= 600 && size.width < 1281;
    final double imageWidth = isSmallScreen ? size.width * 0.4 : size.width * 0.2;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
      decoration: BoxDecoration(
        color: context.customTheme.cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: cardHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        AppAssets.feature,
                        width: imageWidth,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: 'Award',
                                    fontWeight: FontWeight.w600,
                                    fontSize:isTabletScreen?25: 12,
                                  ),
                                  AppText(
                                    text: 'Up to INR 75,000/-',
                                    fontSize:isTabletScreen?20: 9,
                                  ),
                                ],
                              ),
                              SvgPicture.asset(
                                AppAssets.saveIcon,
                                color: context.customTheme.iconColor,
                                width: isTabletScreen? 40:22,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          AppText(
                            text: 'Eligibility',
                            fontWeight: FontWeight.w600,
                            fontSize: isTabletScreen?25:12,
                          ),
                          AppText(
                            text: 'UG & Post Graduate Students',
                            fontSize: isTabletScreen?20:9,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Expanded(
                flex: 3,
                child: AppText(
                  textAlign: TextAlign.justify,
                  text: 'Medhaavi Engineering Scholarship Program 2023-24 Medhaavi Engineering Scholarship',
                  fontSize: isTabletScreen?25:12,
                ),
              ),
              const Expanded(
                flex: 2,
                child: CustomButton(
                  textColor: Colors.white,
                  label: 'View Scholarship Details',
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
