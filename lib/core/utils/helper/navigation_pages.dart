import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

Future<Null> navigateToPages({required Widget page}) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    Get.to(page, transition: Transition.fadeIn);
  });
}
