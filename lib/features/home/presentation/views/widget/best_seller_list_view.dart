import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: PaddingManager.symmetric(context: context, vertical: 0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => BookOverViewItem(),
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
