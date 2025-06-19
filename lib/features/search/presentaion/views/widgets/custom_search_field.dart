import 'package:clean_arch_bookly_app/core/resources/app_stings.dart'
    show AppString;
import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: AppString.searchInput,
        hintStyle: StyleManager.textStyle16(
          context,
          fontFamily: AppFontFamily.montserrat,
        ).copyWith(color: AppColor.gray),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadiusManager.small(context),
          borderSide: BorderSide(color: AppColor.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadiusManager.small(context),
          borderSide: BorderSide(color: AppColor.lightOrange, width: 1.5),
        ),

        suffixIcon: Padding(
          padding: PaddingManager.all(context: context, value: 18.0),
          child: SvgPicture.asset(SvgAssets.search),
        ),
      ),
    );
  }
}
