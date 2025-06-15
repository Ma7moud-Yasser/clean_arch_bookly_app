import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.symmetric(
        context: context,
        vertical: 15,
        horizontal: 0,
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: AspectRatio(
              aspectRatio: 70 / 105,
              child: ClipRRect(
                borderRadius: BorderRadiusManager.small(context),
                child: Image.asset(ImagesAssets.book, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBoxManager.width(context, 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.justify,
                  "Harry Potter and the Goblet of Fire",
                  style: StyleManager.textStyle20(context),
                ),
                Text(
                  textAlign: TextAlign.justify,
                  "J.K. Rowling",
                  style: StyleManager.textStyle16(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textAlign: TextAlign.justify,
                      "19.99 \$",
                      style: StyleManager.textStyle20(context),
                    ),
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
                            textAlign: TextAlign.justify,
                            "4.8",
                            style: StyleManager.textStyle16(
                              context,
                            ).copyWith(color: AppColor.white),
                          ),
                        ),

                        Text(
                          textAlign: TextAlign.justify,
                          "(2390)",
                          style: StyleManager.textStyle16(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
