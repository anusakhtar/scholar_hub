import 'package:flutter/material.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

import '../../../../../../res/AppAssets/app_assets.dart';
import '../../../../../../res/CommonWidgets/AppText/app_text.dart';

class SavedCard extends StatefulWidget {
  const SavedCard({super.key});

  @override
  State<SavedCard> createState() => _SavedCardState();
}

class _SavedCardState extends State<SavedCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    final bool isTabletScreen = size.width >= 600 && size.width < 1024;
    return Container(
      height: isSmallScreen?size.height*.18:isTabletScreen? size.height*.18:size.height*.3,
      margin: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10 : 18, vertical: isSmallScreen ? 5 : 7),
      padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10 : 15, vertical: isSmallScreen ? 10 : 15),
      decoration: BoxDecoration(
        color: context.customTheme.cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Colors.grey),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
              child: Image.asset(AppAssets.feature,fit: BoxFit.fill,)),
          SizedBox(width: isSmallScreen ? 10 : 20),
          Expanded(
           flex: 2,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               AppText(text: 'Asha Scholarship Program 2023',fontSize: isSmallScreen ? 14: isTabletScreen?30:25,),
               CustomButton(
                 textColor: Colors.white,
                 onTap: () {

                 },
                 fontSize: isSmallScreen ? 10: isTabletScreen?25:15,
                 label: "View details",
                 height: isSmallScreen ? 22: isTabletScreen?45:36,
               ),
             ],
           ),
         ),

        ],
      ),
    );
  }
}
