import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../res/AppAssets/app_assets.dart';

class ScholarshipDetailScreen extends StatefulWidget {
  const ScholarshipDetailScreen({Key? key}) : super(key: key);

  @override
  State<ScholarshipDetailScreen> createState() =>
      _ScholarshipDetailScreenState();
}

class _ScholarshipDetailScreenState extends State<ScholarshipDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.card,
              height: MediaQuery.of(context).size.height * .5,
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
                        color: Colors.black,
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const AppText(
                                        text: 'HDFC Bank Parivartan ECSS \nScholarship',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,

                                      ),
                                      SvgPicture.asset(
                                        AppAssets.shareIcon,
                                        color: context.customTheme.iconColor,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const AppText(
                                        text: 'Deadline - 27th November',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        textColor: Colors.red,
                                      ),
                                      SvgPicture.asset(
                                        AppAssets.saveIcon,
                                        color: context.customTheme.iconColor,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 3),
                                  const AppText(
                                    text: 'About the Scholarship',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,

                                  ),
                                  const SizedBox(height: 10),
                                  const AppText(
                                    text:
                                    "HDFC Bank Parivartan's ECSS Programme 2023-24 is an initiative of "
                                        "HDFC Bank that aims to support meritorious and needy students "
                                        "belonging to underprivileged sections of society. The scholarship "
                                        "programme is meant for school students from Class 1 to 12 and those"
                                        " pursuing diploma, ITI, polytechnic, UG and PG (general and "
                                        "professional) programmes. Under the ECSS programme, the students "
                                        "who are unable to bear the cost of education due to personal/family"
                                        " crises or any other financial problems and are at a risk of "
                                        "dropping out are provided with monetary assistance of up to INR"
                                        " 75,000 for their studies.\nHDFC Bank is India’s leading banking and "
                                        "financial service provider. It has introduced this scholarship as"
                                        " part of its flagship programme – Educational Crisis Scholarship"
                                        " Support (ECSS). The bank has been undertaking various projects in"
                                        " the field of education and livelihood training as part of its "
                                        "social initiative - Parivartan",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,

                                    textAlign: TextAlign.justify,
                                  ),
                                  const SizedBox(height: 10),

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
        ),
      ),
    );
  }
}
