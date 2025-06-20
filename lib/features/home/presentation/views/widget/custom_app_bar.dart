import 'package:clean_arch_bookly_app/core/resources/route_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/padding_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.symmetric(context: context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            SvgAssets.logo,
            height: SizeManager.getSize(context).height * 0.025,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoute.searchView.name);
            },
            child: SvgPicture.asset(
              SvgAssets.search,
              height: SizeManager.getSize(context).height * 0.025,
            ),
          ),
        ],
      ),
    );
  }
}
