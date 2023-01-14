import 'package:ebooking/global/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) => ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kLightScaffoldColor,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 25,
      color: kDefaultLightTextColor
    )
  )
);
