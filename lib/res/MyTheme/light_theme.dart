import 'package:flutter/material.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';


ThemeData lightTheme(){
  final ThemeData base =ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: Colors.white,
      extensions: [
        CustomThemeExtension.lightMode,
      ]
  );

}