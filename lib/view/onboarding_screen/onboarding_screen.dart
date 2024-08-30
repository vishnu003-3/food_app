import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // first section - background image
          _buildBackgroundImage(),
          // second section - gradient with start cooking button
          _buildGradientSection(),
        ],
      ),
    );
  }

  Positioned _buildGradientSection() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 64, vertical: 64),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 56,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Find best recipes for cooking",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 32, vertical: 16),
              decoration: BoxDecoration(
                  color: ColorConstants.PRIMARY_COLOR,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Text(
                    "Start Cooking",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG))),
    );
  }
}
