import 'package:flutter/material.dart';

import '../../../../res/AppAssets/app_assets.dart';
import '../../../../res/AppColors/app_colors.dart';
import '../../../../res/CommonWidgets/AppText/app_text.dart';




class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Image.asset(AppAssets.feature,),
                title: AppText( text: 'Your Documents are verified for Medhaavi Engineerin ...',fontSize: 12,),
                subtitle: AppText(text: '9 hour ago',fontSize: 10,textColor: AppColors.greyColor,),
                trailing: Icon(Icons.more_vert,color:AppColors.greyColor,),
              ),
            );
          },

        );
  }
}
