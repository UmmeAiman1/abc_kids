import 'package:abc_kids/view/screens/widgets/custom_image_view_widget.dart';
import 'package:abc_kids/view/screens/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final String image;
  final VoidCallback onTap;
  const CustomAppBar({
    required this.name,
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kWhiteColor,
      leading: InkWell(
        onTap: onTap,
        child: CommonImageView(
          imagePath: image,
        ),
      ),
      title: CustomText(text: name),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
