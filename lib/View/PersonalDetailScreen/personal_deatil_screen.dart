import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/View/PersonalDetailScreen/Screens/id_verification.dart';
import 'package:scholarship_hub/View/PersonalDetailScreen/Screens/personal_detail.dart';
import 'package:scholarship_hub/View/PersonalDetailScreen/Screens/uploadDocuments.dart';
import 'package:scholarship_hub/View/PersonalDetailScreen/Widget/show_dialog_box.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../Controllers/PersonalDetailController/personal_detail_controller.dart';
import '../../res/AppColors/app_colors.dart';
import '../../res/routes/route_name.dart';

class PersonalDetailScreen extends StatefulWidget {
  const PersonalDetailScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailScreen> createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<PersonalDetailScreen> {
  final PersonalDetailController controller = Get.put(PersonalDetailController());

  @override
  Widget build(BuildContext context) {
    final bool isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: Obx(
            () => SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: Get.context!,
                        builder: (BuildContext context) {
                          return ShowDialogBox(
                            onTap: () {
                              Get.toNamed(RouteName.welcomeScreen);
                            },
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SvgPicture.asset(
                        AppAssets.backArrowIcon,
                        color: context.customTheme.iconColor,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 2, color: AppColors.darkGreyColor),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SvgPicture.asset(
                        AppAssets.profileIcon,
                        color: controller.iconColors[0],
                        height: controller.iconSizes[0],
                        width: controller.iconSizes[0],
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: AppColors.greyColor,
                        thickness: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SvgPicture.asset(
                        AppAssets.idVerificationIcon,
                        color: controller.iconColors[1],
                        height: controller.iconSizes[1],
                        width: controller.iconSizes[1],
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: AppColors.greyColor,
                        thickness: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SvgPicture.asset(
                        AppAssets.fileIcon,
                        color: controller.iconColors[2],
                        height: controller.iconSizes[2],
                        width: controller.iconSizes[2],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: AppText(
                  text: controller.selectedTab.value == 0
                      ? 'Personal details'
                      : controller.selectedTab.value == 1
                      ? 'ID Verification'
                      : 'Upload Documents',
                  fontWeight: FontWeight.w500,
                  fontSize: isTablet ? 36 : 24,
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    controller.selectedTab.value == 0
                        ? const PersonalDetails()
                        : controller.selectedTab.value == 1
                        ? const IDVerification()
                        : const UploadDocuments(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: controller.selectedTab.value == 2
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      label: "I'll upload later",
                      width: 136,
                      backgroundColor: Colors.transparent,
                      borderColor: AppColors.greyColor,
                      fontSize:isTablet?20:12,
                    ),
                    CustomButton(
                      textColor: Colors.white,
                      onTap: () {
                        Get.toNamed(RouteName.doneScreen);
                      },
                      label: "Continue",
                      width: 136,
                      fontSize:isTablet?20:12,
                    ),
                  ],
                )
                    : CustomButton(
                  textColor: Colors.white,
                  onTap: () {
                    controller.selectedTab.value == 0
                        ? controller.setTab(1)
                        : controller.setTab(2);
                  },
                  label: controller.selectedTab.value == 0 ? 'Continue' : 'Send OTP',
                  fontSize:isTablet?20:12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
