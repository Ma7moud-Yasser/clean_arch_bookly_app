import 'package:clean_arch_bookly_app/core/components/custom_ratting.dart';
import 'package:clean_arch_bookly_app/core/resources/route_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';

class BookOverViewItem extends StatelessWidget {
  const BookOverViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.symmetric(
        context: context,
        vertical: 15,
        horizontal: 0,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AppRoute.bookDetailsView.name);
        },
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: AspectRatio(
                aspectRatio: 70 / 105,
                child: ClipRRect(
                  borderRadius: BorderRadiusManager.small(context),
                  child: Image.asset(ImagesAssets.book1, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBoxManager.width(context, 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Harry Potter and the Goblet of Fire",
                    style: StyleManager.textStyle20(
                      context,
                      fontFamily: AppFontFamily.GTSectra,
                    ),
                  ),
                  Text(
                    "J.K. Rowling",
                    style: StyleManager.textStyle16(context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 \$",
                        style: StyleManager.textStyle18(
                          context,
                          fontFamily: AppFontFamily.cairo,
                        ),
                      ),
                      CustomRatting(ratting: "4.8", views: "2390"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
