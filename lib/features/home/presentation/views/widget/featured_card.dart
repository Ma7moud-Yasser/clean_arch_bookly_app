import 'dart:ui';

import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/border_radius_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 150 / 224,
          child: ClipRRect(
            borderRadius: BorderRadiusManager.medium(context),
            child: Image.asset(ImagesAssets.book1, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          right: 8,
          bottom: 16,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: PaddingManager.all(context: context, value: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
                child: SvgPicture.asset(
                  SvgAssets.playIcon,
                  height: SizeManager.getHeight(context) * 0.015,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
