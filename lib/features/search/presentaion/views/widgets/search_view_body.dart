import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/features/search/presentaion/views/widgets/custom_search_books.dart';
import 'package:clean_arch_bookly_app/features/search/presentaion/views/widgets/custom_search_field.dart';
import 'package:clean_arch_bookly_app/features/search/presentaion/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: PaddingManager.only(
          context: context,
          top: 30,
          left: 30,
          right: 30,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBooks(),
            CustomSearchField(),
            SearchResultListView(),
          ],
        ),
      ),
    );
  }
}
