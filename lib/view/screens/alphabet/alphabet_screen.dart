import 'package:abc_kids/config/routes/routes.dart';
import 'package:abc_kids/constants/app_colors.dart';
import 'package:abc_kids/constants/app_fonts.dart';
import 'package:abc_kids/constants/app_images.dart';
import 'package:abc_kids/constants/app_styling.dart';
import 'package:abc_kids/controllers/alphabet_controller.dart';
import 'package:abc_kids/controllers/tracing_controller.dart';


import 'package:abc_kids/view/screens/widgets/custom_image_view_widget.dart';
import 'package:abc_kids/view/screens/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abc_kids/models/alphabet_model.dart';

class AlphabetScreen extends StatelessWidget {
  const AlphabetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AlphabetController controller = Get.put(AlphabetController());
    final TracingController tracingController = Get.put(TracingController());
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
            child: _buildImageView(context),
          ),
          SizedBox(
            width: w(context, 20),
          ),
          Positioned(
            left: w(context, 125),
            child: _buildAlphabetView(context, controller, tracingController) ,
          ),
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
        height: h(context, 310),
      ),
    );
  }

  Widget _buildImageView(BuildContext context) {
    return Padding(
      padding: only(
        context,
        top: h(context, 300),
      ),
      child: CommonImageView(
        imagePath: Assets.imagesParrot,
        fit: BoxFit.contain,
        width: w(context, 60),
        height: h(context, 1000),
      ),
    );
  }

  Widget _buildAlphabetView(
      BuildContext context, AlphabetController controller, TracingController tracingController) {
    return Padding(
      padding: only(context, top: h(context, 200)),
      child: Column(
        children: [
          Stack(
            children: [
              _buildAlphabetGrid(context, controller, tracingController),
              _buildHeader(context),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildAlphabetGrid(BuildContext context, AlphabetController controller, TracingController tracingController) {
  return Container(
    height: h(context, 591),
    width: w(context, 245),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: kWhiteColor,
    ),
    child: Center(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: only(
            context,
            top: h(context, 130),
            left: w(context, 10),
            right: w(context, 10),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      
              crossAxisCount: 10,
              mainAxisExtent: 50,
              mainAxisSpacing: 10,
            ),
            itemCount: controller.alphabetList.length ,
         
            itemBuilder: (context, index) {
              AlphabetModel alphabetModel = controller.alphabetList[index];

              return InkWell(
                onTap: () {
                  Get.toNamed(AppLinks.tracing,
                   arguments: {
         'selectedAlphabet': alphabetModel.alphabet,
                    'imageName': alphabetModel.imageName,
                    'image': alphabetModel.image,
                  },
                  );
                },
                child: Text(
                  alphabetModel.alphabet,
                  style: TextStyle(
                    fontFamily: AppFonts.baloo,
                    fontWeight: FontWeight.w900,
                    fontSize: 45,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
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
