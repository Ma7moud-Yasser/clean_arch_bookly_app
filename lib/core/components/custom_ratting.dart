import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomRatting extends StatelessWidget {
  const CustomRatting({super.key});

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
                "4.8",
                style: StyleManager.textStyle16(
                  context,
                ).copyWith(color: AppColor.white),
              ),
            ),

            Text("(2390)", style: StyleManager.textStyle16(context)),
          ],
        ),
      ],
    );
  }
}
