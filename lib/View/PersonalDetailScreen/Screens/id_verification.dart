import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/Controllers/IDVerificationController/id_verification_controller.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

import '../../../res/AppColors/app_colors.dart';
import '../../../res/CommonWidgets/CustomDropdownMenu/custom_dropdown_menu.dart';
import '../../../res/CommonWidgets/CustomTextFormField/custom_text_form_field.dart';

class IDVerification extends StatefulWidget {
  const IDVerification({super.key});

  @override
  State<IDVerification> createState() => _IDVerificationState();
}

class _IDVerificationState extends State<IDVerification> {
  final IDVerificationController controller = Get.put(IDVerificationController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Obx(() => CustomDropdownButtonFormField(
              labelText: 'Document Type',
              value: controller.selectedDocumentType.value,
              onChanged: controller.selectDocumentType,
              items: [
                DropdownMenuItem<int>(
                  value: 0, // Change the value to null
                  child: Text(
                    "Select Document Type",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: controller.selectedDocumentType.value == 0
                          ? AppColors.primaryColor
                          : context.customTheme.textColor,
                    ),
                  ),
                ),
                DropdownMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Aadhaar card",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: controller.selectedDocumentType.value == 1
                          ? AppColors.primaryColor
                          : context.customTheme.textColor,
                    ),
                  ),
                ),
                DropdownMenuItem<int>(
                  value: 2,
                  child: Text(
                    "ID card",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: controller.selectedDocumentType.value == 2
                          ?AppColors.primaryColor
                          : context.customTheme.textColor,
                    ),
                  ),
                ),
                DropdownMenuItem<int>(
                  value: 3,
                  child: Text(
                    "Driving License card",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: controller.selectedDocumentType.value == 3
                          ?AppColors.primaryColor
                          : context.customTheme.textColor,
                    ),
                  ),
                ),
              ],

              hintText: 'Select Type',
              hintColor: context.customTheme.textColor,
              enabledBorderColor: AppColors.greyColor,
              focusedBorderColor: AppColors.greyColor,
              fillColor: context.customTheme.bgcolor,
              primaryColor: AppColors.primaryColor,
            ),),
            const SizedBox(height: 20),
            CustomTextFormField(
              textColor: AppColors.primaryColor,
              cursorColor: AppColors.primaryColor,
              onTap: () {},
              labelText: 'ID Number',
              hintText: '2510 2958 4685 6574',
              hintTextColor: AppColors.primaryColor,

            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              onTap: () {},
              readOnly: true,
              labelText: 'Upload ID',
              hintText: 'Aadhaar-card.pdf',
              hintTextColor: AppColors.primaryColor,
              suffixIcon: Icons.close_outlined,
              suffixIconColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
