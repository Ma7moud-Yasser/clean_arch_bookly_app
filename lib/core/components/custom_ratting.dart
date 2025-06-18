import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomRatting extends StatelessWidget {
  final String ratting;
  final String views;

  const CustomRatting({super.key, required this.ratting, required this.views});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(Icons.star_rate_rounded, color: AppColor.rating),
            Padding(
              padding: PaddingManager.symmetric(
                context: context,
                horizontal: 8,
                vertical: 0,
              ),
              child: Text(
                ratting,
                style: StyleManager.textStyle16(
                  context,
                ).copyWith(color: AppColor.white),
              ),
            ),

            Text("($views)", style: StyleManager.textStyle16(context)),
          ],
        ),
      ],
    );
  }
}
