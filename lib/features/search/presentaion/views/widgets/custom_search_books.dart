import 'package:clean_arch_bookly_app/core/resources/app_stings.dart';
import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart'
    show SvgAssets;
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBooks extends StatelessWidget {
  const CustomSearchBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.searchBooks,
          style: StyleManager.textStyle32(
            context,
            fontFamily: AppFontFamily.GTSectra,
          ).copyWith(color: AppColor.white),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            SvgAssets.closeIcon,
            height: 34,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
