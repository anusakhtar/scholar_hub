import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../../../res/AppAssets/app_assets.dart';
import '../../../../res/AppColors/app_colors.dart';
import '../../../../res/CommonWidgets/AppText/app_text.dart';
import '../../../../res/CommonWidgets/CustomTextFormField/custom_text_form_field.dart';
import '../../../../res/routes/route_name.dart';
import 'Widgets/CustomBanner/custom_banner.dart';
import 'Widgets/CustomCard/custom_card.dart';
import 'Widgets/Drawer/drawer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isTabletScreen = size.width >= 600 && size.width < 1281;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: context.customTheme.bgcolor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: context.customTheme.iconColor,
            size: isTabletScreen?40:22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(RouteName.notificationScreen);
            },
            icon: Icon(
              Icons.notifications_outlined,
              color: context.customTheme.iconColor,
              size: isTabletScreen?40:22,
            ),
          ),
        ],
        backgroundColor:context.customTheme.bgcolor,
        title: AppText(
          text: 'Scholar Hub',
          fontSize: isTabletScreen? 30:24,
          fontWeight: FontWeight.w600,
        ),
      ),
      drawer: MyDrawer(),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: CustomTextFormField(
              borderColor: Colors.transparent,
              contentPadding: const EdgeInsets.all(1),
              hintTextFontSize: 16,
              filled: true,
              fillColor: AppColors.greyColor.withOpacity(.30),
              line1Color: Colors.transparent,
              prefixIcon:Icons.search,
              hintText: 'Search',
              suffixIcon: Icons.mic,
              line2Color:AppColors.darkGreyColor,
            ),
          ),
          const SizedBox(height: 20),
          const BannerCarousel(
            activeColor: AppColors.primaryColor,
            customizedBanners: [
              CustomBanner(imagePath: AppAssets.banner1,),
              CustomBanner(imagePath: AppAssets.banner1,),
              CustomBanner(imagePath: AppAssets.banner1,),
              CustomBanner(imagePath: AppAssets.banner1,),
              CustomBanner(imagePath: AppAssets.banner1,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: 'Trending Scholarships',fontWeight: FontWeight.w600,fontSize: isTabletScreen?25:18,),
                AppText(text: 'view all',fontWeight: FontWeight.w500,fontSize: isTabletScreen?20:12,textColor: AppColors.primaryColor,),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: SizedBox(
              height: 252,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                 itemCount: 10,
                  itemBuilder: (context,index){
                return  const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomCard(),
                );
              }),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: 'Featured Scholarships',fontWeight: FontWeight.w600,fontSize: isTabletScreen?25:18,),
                AppText(text: 'view all',fontWeight: FontWeight.w500,fontSize: isTabletScreen?20:12,textColor: AppColors.primaryColor,),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: SizedBox(
              height: isTabletScreen? size.height *.2:84,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 2,
                      child: Image.asset(AppAssets.feature,height: isTabletScreen?  size.height:84,fit: BoxFit.fill,)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          text: 'Saksham Scholarship 2023 ',
                          fontSize: isTabletScreen? 20:12,
                          fontWeight: FontWeight.w400,
                        ),
                        AppText(text:'Award: Up to INR 20,000/-',
                          fontSize: isTabletScreen? 20:12,
                          fontWeight: FontWeight.w400,
                        ),
                        AppText(text:'Eligibility: First Year UG St ...',
                          fontSize: isTabletScreen? 20:12,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ),


        ],
      ),
    );
  }
}
