// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:abc_kids/constants/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../config/routes/routes.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../widgets/custom_image_view_widget.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
  void splashScreenHandler() {
    Get.offAllNamed(AppLinks.intro);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
          padding: only(context, top: 50),
              child: CommonImageView(
                imagePath: Assets.imagesParrot,
                fit: BoxFit.contain,
                width: w(context, 800),
                height: h(context, 970),
              ),
            ),
            SizedBox(
              height: h(context, 30),
            ),
            SizedBox(
              width: w(context, 250),
              child: Center(
                child: LinearPercentIndicator(
                  barRadius: Radius.circular(30),
                  animation: true,
                  animationDuration: 2000,
                  backgroundColor: kgreyColor,
                  progressColor: kIndicatorColor,
                  lineHeight: h(context, 25),
                  percent: 1.0,
                onAnimationEnd: () {
              splashScreenHandler();
                },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
