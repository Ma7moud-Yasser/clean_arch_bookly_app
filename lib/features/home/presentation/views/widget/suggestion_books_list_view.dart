import 'package:clean_arch_bookly_app/core/styles/sized_box_manager.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/bool_cover.dart';
import 'package:flutter/material.dart';

class SuggestionBooksListView extends StatelessWidget {
  const SuggestionBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BookCover(),
        separatorBuilder:
            (context, index) => SizedBoxManager.width(context, 20),
        itemCount: 10,
      ),
    );
  }
}
