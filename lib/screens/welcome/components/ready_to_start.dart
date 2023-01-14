import 'package:ebooking/screens/login/login_screen.dart';
import 'package:ebooking/screens/welcome/components/welcome_screen_body.dart';
import 'package:flutter/material.dart';

class ReadyToStart extends StatelessWidget {
  const ReadyToStart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeScreenBody(
        firstTitle: "We are ready to",
        secondTitle: "Start!",
        description: "In the next step you can login in your platform or create account.",
        screenToGo: LoginScreen(),
      ),
    );
  }
}
