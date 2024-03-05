import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../../res/AppColors/app_colors.dart';
import '../../../res/CommonWidgets/AppText/app_text.dart';
import '../../../res/CommonWidgets/CustomButton/custom_button.dart';


class ShowDialogBox extends StatefulWidget {
  final void Function()? onTap;
  const ShowDialogBox({super.key, this.onTap});

  @override
  State<ShowDialogBox> createState() => _ShowDialogBoxState();
}

class _ShowDialogBoxState extends State<ShowDialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.customTheme.bgcolor,
      content: const AppText(textAlign: TextAlign.center,text: 'Are you sure you want to \n exit?',fontSize: 16,fontWeight: FontWeight.w500,),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              onTap: (){Get.back();},
              label: "No",
              width: 100,
              height: 36,
              backgroundColor: Colors.transparent,
              borderColor: AppColors.whiteColor,
            ),
            CustomButton(
              textColor: Colors.white,
              onTap: widget.onTap,
              label: "Yes",
              width: 100,
              height: 36,
            ),
          ],
        ),
      ],
    );
  }
}
