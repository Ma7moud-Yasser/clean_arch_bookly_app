import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          SvgAssets.closeIcon,
          color: AppColor.white,
          height: SizeManager.getHeight(context) * 0.03,
        ),
        SvgPicture.asset(
          SvgAssets.cartIcon,
          height: SizeManager.getHeight(context) * 0.03,
        ),
      ],
    );
  }
}
