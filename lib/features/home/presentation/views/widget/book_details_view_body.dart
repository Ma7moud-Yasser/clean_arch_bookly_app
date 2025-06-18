import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: PaddingManager.symmetric(context: context),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              ClipRRect(
                borderRadius: BorderRadiusManager.medium(context),
                child: Image.asset(
                  ImagesAssets.book1,
                  height: MediaQuery.of(context).size.height * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBoxManager.height(context, 44),
              Text(
                "The Jungle Book",
                style: StyleManager.textStyle32(
                  context,
                  fontFamily: AppFontFamily.GTSectra,
                ).copyWith(color: AppColor.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
