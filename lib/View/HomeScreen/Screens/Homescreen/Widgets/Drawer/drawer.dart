import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomListTile/CustomListTile.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/AppColors/app_colors.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

import '../../../../../../Controllers/ThemeController/themecontroller.dart';
import '../../../../../../res/routes/route_name.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.customTheme.bgcolor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.profile),
                      radius: 30,
                    ),
                    title: Text(
                      'Aditi Sharma',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      'Aditisharma18@gmail.com',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const CustomListTile(
                    leading: AppAssets.personIcon,
                    title: 'Profile',
                  ),
                  const CustomListTile(
                    leading: AppAssets.lockIcon,
                    title: 'Change password',
                  ),
                  const CustomListTile(
                    leading: AppAssets.notificationIcon,
                    title: 'Push Notifications',
                  ),
                  CustomListTile(
                    leading: AppAssets.themeIcon,
                    title: 'Dark mode',
                    childWidget: SizedBox(
                      height: 30,
                      width: 40,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          activeColor: Colors.white,
                          activeTrackColor: AppColors.primaryColor,
                          value: _themeController.isDarkMode.value,
                          onChanged: (newValue) {
                            _themeController.toggleTheme();
                          },
                        ),
                      ),
                    ),
                  ),
                  const CustomListTile(
                    leading: AppAssets.aboutIcon,
                    title: "About",
                  ),
                  CustomListTile(
                    onTap: () {
                      Get.toNamed(RouteName.countriesListScreen);
                    },
                    leading: AppAssets.faqIcon,
                    title: "All scholarships",
                  ),
                  const CustomListTile(
                    leading: AppAssets.settingIcon,
                    title: 'Settings ',
                  ),
                  const CustomListTile(
                    leading: AppAssets.contactusIcon,
                    title: 'Contact us',
                  ),
                  const CustomListTile(
                    leading: AppAssets.logoutIcon,
                    title: 'Log out',
                    leadingColor: Colors.red,
                    titleColor: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
