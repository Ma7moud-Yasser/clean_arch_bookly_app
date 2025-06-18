import 'package:clean_arch_bookly_app/core/resources/route_manager.dart';
import 'package:flutter/material.dart';

navigateToPages({
  required BuildContext context,
  required AppRoute newRouteName,
}) {
  Future.delayed(const Duration(milliseconds: 500)).then(
    (value) => Navigator.pushNamedAndRemoveUntil(
      context,
      newRouteName.name,
      (route) => false,
    ),
  );
}
