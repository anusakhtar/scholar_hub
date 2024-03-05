


import 'package:flutter/material.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';


ThemeData darkTheme(){
final ThemeData base =ThemeData.dark();
return base.copyWith(
   scaffoldBackgroundColor: Colors.grey.shade50,
   extensions: [
      CustomThemeExtension.darkMode,
   ]

);

}