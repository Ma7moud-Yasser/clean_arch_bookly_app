import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/book_details_action_button.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/book_informations.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/bool_cover.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/suggestion_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: PaddingManager.symmetric(context: context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomBookDetailsAppBar(),
                      SizedBoxManager.height(context, 30),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: BookCover(),
                      ),
                      SizedBoxManager.height(context, 44),
                      BookInformations(
                        title: "The Jungle Book",
                        author: "Rudyard Kipling",
                        ratting: "4.8",
                        views: "2390",
                      ),
                      SizedBoxManager.height(context, 40),
                      BookDetailsActionButton(
                        onPressedBuy: () {},
                        onPressedPreview: () {},
                        price: "19.99 \$",
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBoxManager.height(context, 50)),
                SuggestionBookSection(),
                SizedBoxManager.height(context, 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
