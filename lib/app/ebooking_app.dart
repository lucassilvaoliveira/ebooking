import 'package:ebooking/global/theme_dark.dart';
import 'package:ebooking/global/theme_light.dart';
import 'package:flutter/material.dart';

class EbookingApp extends StatelessWidget {
  const EbookingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      home: const Scaffold(),
    );
  }
}
