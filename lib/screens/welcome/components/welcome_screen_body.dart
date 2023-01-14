import 'package:ebooking/global/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreenBody extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final String description;
  final Widget screenToGo;
  const WelcomeScreenBody({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
    required this.description,
    required this.screenToGo,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$firstTitle\n",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: secondTitle,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => screenToGo)),
                  child: Container(
                    height: size.height * .1,
                    width: size.width * .15,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(CupertinoIcons.arrow_right),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
