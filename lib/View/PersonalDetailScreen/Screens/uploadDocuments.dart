import 'package:flutter/material.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import '../../../res/AppColors/app_colors.dart';
import '../Widget/dotted_container.dart';

class UploadDocuments extends StatefulWidget {
  const UploadDocuments({super.key});

  @override
  State<UploadDocuments> createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(text: 'Proof of Education',fontWeight: FontWeight.w300,fontSize: 20,),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  DottedContainer(
                    color: AppColors.primaryColor, // Customize the color
                    strokeWidth: 5.0, // Customize the stroke width
                    gap: 12.0,
                    borderRadius: BorderRadius.circular(10), // Customize the gap between dots
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      child: const Center(
                          child: Icon(
                        Icons.add,
                            color: AppColors.primaryColor,
                            size: 35,
                      ),),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppText(text: 'Qualification \nCertificate*',fontSize: 10,),
                ],
              ),
              const SizedBox(width: 60,),
              Column(
                children: [
                  DottedContainer(
                    color: AppColors.primaryColor, // Customize the color
                    strokeWidth: 5.0, // Customize the stroke width
                    gap: 12.0,
                    borderRadius:
                    BorderRadius.circular(10), // Customize the gap between dots
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      child: const Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.primaryColor,
                            size: 35,
                          )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppText(text: 'Other',fontSize: 10,)
                ],
              ),

            ],
          ),
          const SizedBox(height: 20),
          const AppText(text: 'Proof of Economic Background',fontWeight: FontWeight.w300,fontSize: 20,),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  DottedContainer(
                    color: AppColors.primaryColor, // Customize the color
                    strokeWidth: 5.0, // Customize the stroke width
                    gap: 12.0,
                    borderRadius:
                    BorderRadius.circular(10), // Customize the gap between dots
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: AppColors.primaryColor,
                          size: 35,
                        ),),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppText(text: 'Caste Certificate*',fontSize: 10,),
                ],
              ),
              const SizedBox(width: 60,),
              Column(
                children: [
                  DottedContainer(
                    color: AppColors.primaryColor, // Customize the color
                    strokeWidth: 5.0, // Customize the stroke width
                    gap: 12.0,
                    borderRadius:
                    BorderRadius.circular(10), // Customize the gap between dots
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      child: const Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.primaryColor,
                            size: 35,
                          )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppText(text: 'Income Certificate*',fontSize: 10,)
                ],
              ),

            ],
          ),
          const SizedBox(height: 20),
          const AppText(text: 'Proof of Address',fontWeight: FontWeight.w300,fontSize: 20,),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  DottedContainer(
                    color: AppColors.primaryColor, // Customize the color
                    strokeWidth: 5.0, // Customize the stroke width
                    gap: 12.0,
                    borderRadius:
                    BorderRadius.circular(10), // Customize the gap between dots
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: AppColors.primaryColor,
                          size: 35,
                        ),),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppText(text: 'Utility/water Bill*',fontSize: 10,),
                ],
              ),
              const SizedBox(width: 60,),
              Column(
                children: [
                  DottedContainer(
                    color: AppColors.primaryColor, // Customize the color
                    strokeWidth: 5.0, // Customize the stroke width
                    gap: 12.0,
                    borderRadius:
                    BorderRadius.circular(10), // Customize the gap between dots
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      child: const Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.primaryColor,
                            size: 35,
                          )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppText(text: 'Other',fontSize: 10,)
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
