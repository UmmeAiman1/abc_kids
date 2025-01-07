// import 'package:abc_kids/constants/app_fonts.dart';
import 'dart:async';

import 'package:abc_kids/constants/app_colors.dart';
import 'package:abc_kids/constants/app_fonts.dart';
import 'package:abc_kids/constants/app_styling.dart';
import 'package:abc_kids/view/screens/widgets/custom_image_view_widget.dart';
import 'package:abc_kids/view/screens/widgets/custom_text_widget.dart';
import 'package:arc_text/arc_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/routes/routes.dart';
import '../../../constants/app_images.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Get.offNamed(AppLinks.alphabet),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesIntroBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            _buildImageView(context),
            _buildText(context),
            Padding(
              padding: only(
                context,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildText2(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




Widget _buildImageView(BuildContext context) {
  return Padding(
    padding: only(context, top: 125, left: 87),
    child: CommonImageView(
      imagePath: Assets.imagesParrot,
      fit: BoxFit.contain,
      width: w(context, 60),
      height: h(context, 1100),
    ),
  );
}

Widget _buildText(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: only(context, top: 750, left: 87),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ArcText(
              radius: 85,
              startAngle: -0.69,
              text: 'A',
              textStyle: TextStyle(
                fontSize: f(context, 175),
                color: kPinkColor,
                fontFamily: AppFonts.baloo,
                fontWeight: FontWeight.w900,
                letterSpacing: -55,
              ),
            ),
            ArcText(
              radius: 83,
              startAngle: -0.2,
              text: 'B',
              textStyle: TextStyle(
                fontSize: f(context, 175),
                color: kRedColor,
                fontFamily: AppFonts.baloo,
                fontWeight: FontWeight.w900,
                letterSpacing: -55,
              ),
            ),
            ArcText(
              radius: 90,
              startAngle: 0.27,
              text: 'C',
              textStyle: TextStyle(
                fontSize: f(context, 175),
                color: kYellowColor,
                fontFamily:  AppFonts.baloo,
                fontWeight: FontWeight.w900,
                letterSpacing: -55,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildText2(BuildContext context) {
  return Padding(
    padding: only(context, top: 420),
    child: Center(
      child: CustomText(
        text: 'Kids',
        size: 100,
        color: kBlueColor,
        fontFamily: AppFonts.comicNeue,
        weight: FontWeight.w900,
      ),
    ),
  );
}
