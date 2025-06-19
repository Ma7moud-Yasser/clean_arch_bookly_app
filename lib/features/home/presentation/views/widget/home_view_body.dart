import 'package:clean_arch_bookly_app/core/resources/app_stings.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBoxManager.height(context, 30),
            FeaturedListView(),
            SizedBoxManager.height(context, 60),
            Padding(
              padding: PaddingManager.symmetric(context: context, vertical: 0),
              child: Text(
                AppString.bestSeller,
                style: StyleManager.textStyle24(
                  context,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBoxManager.height(context, 30),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
