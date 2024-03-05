

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../res/AppAssets/app_assets.dart';
import '../../res/AppColors/app_colors.dart';
import '../../res/CommonWidgets/AppText/app_text.dart';
import '../../res/CommonWidgets/CustomButton/custom_button.dart';

class ScholarshipStatusScreen extends StatefulWidget {


  const ScholarshipStatusScreen({Key? key, }) : super(key: key);

  @override
  State<ScholarshipStatusScreen> createState() => _ScholarshipStatusScreenState();
}

class _ScholarshipStatusScreenState extends State<ScholarshipStatusScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.status,
              height: MediaQuery.of(context).size.height * .4,
              fit: BoxFit.fill,
            ),

            Positioned(
              left: 10,
              right: 0,
              top: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        AppAssets.backArrowIcon,
                        color: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final maxPadding =MediaQuery.of(context).size.height *.3;
                return Positioned(
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding:  EdgeInsets.only(top: maxPadding),
                    child: Container(
                      height:MediaQuery.of(context).size.height*.7,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: context.customTheme.bgcolor,

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                children: [
                                  const SizedBox(height: 20),
                                  const AppText(
                                    text: 'Medhaavi Engineering Scholarship Program 2023-24',
                                    fontSize: 16,
                                  ),
                                  const SizedBox(height: 20),
                                  const AppText(
                                    text: 'Your Application Status',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset( AppAssets.checkIcon),
                                          const Divider(color: Colors.white, thickness: 4, height: 45),
                                          SvgPicture.asset(AppAssets.checkIcon),
                                        ],
                                      ),

                                      const SizedBox(width: 20),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          AppText(text: 'Application Submitted'),
                                          AppText(
                                            text: '24-08-2023 12:09 pm',
                                            fontSize: 12,
                                            textColor: AppColors.greyColor,
                                          ),
                                          SizedBox(height: 30),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              AppText(text: 'Your Application Is Under Review'),
                                              AppText(
                                                text: '27-08-2023 05:23 pm',
                                                fontSize: 12,
                                                textColor: AppColors.greyColor,
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const CustomButton(
                              textColor: Colors.white,
                              label: 'Apply Now',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        )
      ),
    );
  }
}
