import 'package:flutter/material.dart';

class SizeManager {
  static Size _getSize(BuildContext context) => MediaQuery.sizeOf(context);

  static double getWidth(BuildContext context) => _getSize(context).width;
  static double getHeight(BuildContext context) => _getSize(context).height;

  static Size getSize(BuildContext context) => _getSize(context);
}
