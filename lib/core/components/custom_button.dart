import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String buttonText;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  final FontWeight fontWeight;

  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.buttonText,
    this.fontWeight = FontWeight.normal,
    this.borderRadius,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius:
              borderRadius ??
              BorderRadiusManager.custom(
                context: context,
                bottomLeft: 16,
                topLeft: 16,
              ),
        ),
        padding: PaddingManager.symmetric(
          context: context,
          // horizontal: 48,
          vertical: 28,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: StyleManager.textStyle18(
          context,
          fontFamily: AppFontFamily.montserrat,
          fontWeight: fontWeight,
        ).copyWith(color: textColor),
      ),
    );
  }
}
