import 'package:ebooking/global/constants.dart';
import 'package:flutter/material.dart';

ThemeData darkThemeData(BuildContext context) => ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kDarkScaffoldColor,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 25,
      color: kDefaultDarkTextColor
    )
  )
);
