import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close_rounded, size: 35, color: AppColor.white),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
