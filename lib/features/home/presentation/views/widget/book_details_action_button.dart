import 'package:clean_arch_bookly_app/core/components/custom_button.dart';
import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:flutter/material.dart';

class BookDetailsActionButton extends StatelessWidget {
  final void Function()? onPressedBuy;
  final void Function()? onPressedPreview;
  final String price;

  const BookDetailsActionButton({
    super.key,
    required this.onPressedBuy,
    required this.onPressedPreview,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.symmetric(
        context: context,
        horizontal: 16,
        vertical: 0,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              fontWeight: FontWeight.bold,
              backgroundColor: AppColor.white,
              textColor: AppColor.back,
              buttonText: "19.99 \$",
              borderRadius: BorderRadiusManager.custom(
                context: context,
                bottomLeft: 16,
                topLeft: 16,
              ),
              onPressed: onPressedBuy,
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: AppColor.lightOrange,
              textColor: AppColor.white,
              buttonText: "Free Preview",
              borderRadius: BorderRadiusManager.custom(
                context: context,
                bottomRight: 16,
                topRight: 16,
              ),
              onPressed: onPressedPreview,
            ),
          ),
        ],
      ),
    );
  }
}
