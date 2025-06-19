import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => BookOverViewItem(),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
