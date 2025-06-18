import 'package:clean_arch_bookly_app/core/components/custom_ratting.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';

class BookInformations extends StatelessWidget {
  final String title;
  final String author;
  final String ratting;
  final String views;

  const BookInformations({
    super.key,
    required this.title,
    required this.author,
    required this.ratting,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: StyleManager.textStyle32(
            context,
            fontFamily: AppFontFamily.GTSectra,
          ).copyWith(color: AppColor.white),
        ),
        SizedBoxManager.height(context, 8),
        Text(
          author,
          style: StyleManager.textStyle20(
            context,
            fontFamily: AppFontFamily.montserrat,
          ).copyWith(color: AppColor.gray),
        ),
        SizedBoxManager.height(context, 20),
        CustomRatting(ratting: ratting, views: views),
      ],
    );
  }
}
