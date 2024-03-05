import 'package:flutter/material.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/SavedScreen/Widget/SavedCard/saved_card.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

import '../../../../res/AppColors/app_colors.dart';
import '../../../../res/CommonWidgets/AppText/app_text.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isTabletScreen = size.width >= 600 && size.width < 1281;
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  text: 'Saved Scholarships',
                  fontSize: isTabletScreen? 30:20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height:isTabletScreen? 20:10),
            const Divider(thickness: 2, color: AppColors.darkGreyColor),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const SavedCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
