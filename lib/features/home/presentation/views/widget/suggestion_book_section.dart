import 'package:clean_arch_bookly_app/core/resources/app_stings.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/suggestion_books_list_view.dart';
import 'package:flutter/material.dart';

class SuggestionBookSection extends StatelessWidget {
  const SuggestionBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: PaddingManager.symmetric(context: context, vertical: 0),
          child: Text(
            AppString.youCanAlsoLike,
            style: StyleManager.textStyle18(
              context,
              fontFamily: AppFontFamily.montserrat,
              fontWeight: FontWeight.bold,
            ).copyWith(color: Colors.white),
          ),
        ),
        SizedBoxManager.height(context, 18),
        SuggestionBooksListView(),
      ],
    );
  }
}
