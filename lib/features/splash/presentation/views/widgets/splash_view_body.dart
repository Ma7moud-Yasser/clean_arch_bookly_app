import 'package:clean_arch_bookly_app/core/resources/route_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/assets_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/size_manager.dart';
import 'package:clean_arch_bookly_app/core/components/navigation_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeIn;

  @override
  void initState() {
    initFadeInAnimation();
    navigateToPages(context: context, newRouteName: AppRoute.homeView);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: fadeIn,
          builder: (context, _) {
            return FadeTransition(
              opacity: fadeIn,

              child: SvgPicture.asset(
                SvgAssets.logo,
                width: SizeManager.getSize(context).width * 0.5,
              ),
            );
          },
        ),
      ),
    );
  }

  void initFadeInAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
