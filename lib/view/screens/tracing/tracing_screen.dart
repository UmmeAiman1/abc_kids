import 'package:abc_kids/controllers/alphabet_controller.dart';

import 'package:abc_kids/view/screens/tracing/widgets/alphabet_painter.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abc_kids/constants/app_colors.dart';
import 'package:abc_kids/constants/app_images.dart';
import 'package:abc_kids/view/screens/widgets/custom_image_view_widget.dart';
import 'package:abc_kids/view/screens/widgets/custom_text_widget.dart';

import '../../../constants/app_fonts.dart';
import '../../../constants/app_styling.dart';
import '../../../controllers/tracing_controller.dart';

class TracingScreen extends StatelessWidget {
  final TracingController controller = Get.put(TracingController());
final AlphabetController alphabetController = Get.find();
  TracingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args = Get.arguments;
    var currentAlphabet = args['selectedAlphabet'];
    final String imageName = args['imageName'];
    final String image = args['image'];
    controller.setAlphabetByLetter(currentAlphabet);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.imagesBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: h(context, 15),
            child: InkWell(
              child: Image.asset(Assets.imagesBack),
              onTap: () {
                Get.back();
              },
            ),
          ),
          Positioned(
            child: _buildImageView(context, image, imageName),
          ),
          _buildAlphabetView(context, currentAlphabet),
          _buildBowImage(context),
        ],
      ),
    );
  }

  Widget _buildBowImage(BuildContext context) {
    return Positioned(
      left: w(context, 85),
      child: Image.asset(
        Assets.imagesBow,
        height: h(context, 320),
      ),
    );
  }

  Widget _buildImageView(
    BuildContext context,
    String image,
    String imageName,
  ) {
  
   return Padding(
      padding: only(
        context,
        top: 300,
      ),child:  CommonImageView(
        imagePath: image,
        fit: BoxFit.contain,
        width: w(context, 50),
        height: h(context, 900),
      ));
  
  
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          
      // Text(
      //             imageName,
      //             style: TextStyle(
      //                 fontWeight: FontWeight.w500,
      //                 fontSize: 40,
      //                 foreground: Paint()
      //                   ..style = PaintingStyle.stroke
      //                   ..strokeWidth = 2
      //                   ..color = kBlackColor),
      //           ),
      //   ],
      // ),
  
  }

  Widget _buildAlphabetView(BuildContext context, var currentAlphabet) {
    return Padding(
      padding: only(context, top: 125, left: 125),
      child: Column(
        children: [
          Stack(
            children: [
              _buildAlphabet(context, controller, currentAlphabet),
              _buildHeader(context),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildHeader(BuildContext context) {
  return Positioned(
    top: 0,
    left: 0,
    child: Container(
      height: h(context, 130),
      width: w(context, 245),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kRedColor,
      ),
      child: Center(
        child: CustomText(
          fontFamily: AppFonts.baloo,
          weight: FontWeight.w900,
          text: 'Select Letter',
          size: 50,
          color: kWhiteColor,
        ),
      ),
    ),
  );
}

Widget _buildAlphabet(
    BuildContext context, TracingController controller, var currentAlphabet) {
  return Container(
    height: h(context, 591),
    width: w(context, 245),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: kWhiteColor,
    ),
    child: Padding(
      padding: only(context, top: 80, left: 10, right: 10),
      child: Center(
        child: Obx(
          () {
            return _buildTracingAlphabet(context, controller, currentAlphabet);
          },
        ),
      ),
    ),
  );
}

Widget _buildTracingAlphabet(
    BuildContext context, TracingController controller, currentAlphabet) {
  final alphabet = controller.currentAlphabet;
  return Column(
    children: [
      Expanded(
        child: CustomPaint(
          size: Size(w(context, 100), h(context, 150)),
          painter: AlphabetPainter(alphabet.strokes),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              controller.previousAlphabet();
            },
            child: Image.asset(
              Assets.imagesAgain,
              height: h(context, 150),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Trace'),
          ),
          InkWell(
            onTap: () {
              controller.nextAlphabet();
            },
            child: Image.asset(Assets.imagesNext, height: h(context, 100)),
          ),
        ],
      ),
    ],
  );
}
