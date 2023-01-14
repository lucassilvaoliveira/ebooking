import 'package:ebooking/screens/welcome/components/ready_to_start.dart';
import 'package:ebooking/screens/welcome/components/welcome_screen_body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeScreenBody(
        firstTitle: "Hello! Welcome to",
        secondTitle: "Ebooking!",
        description: "Here you can manage your favorite books!",
        screenToGo: ReadyToStart(),
      ),
    );
  }
}