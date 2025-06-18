import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Enum to manage both Google Fonts and local fonts.
enum AppFontFamily { montserrat, cairo, roboto, GTSectra }

extension FontFamilyExtension on AppFontFamily {
  bool get isGoogleFont {
    switch (this) {
      case AppFontFamily.montserrat:
      case AppFontFamily.cairo:
      case AppFontFamily.roboto:
        return true;
      case AppFontFamily.GTSectra:
        return false;
    }
  }

  String get localFontFamilyName {
    switch (this) {
      case AppFontFamily.GTSectra:
        return 'GTSectra'; // لازم يكون نفس الاسم في pubspec.yaml
      default:
        return '';
    }
  }
}

abstract class StyleManager {
  /// يمكنك تغييره لتعيين الخط الافتراضي للتطبيق بالكامل
  static AppFontFamily defaultFont = AppFontFamily.montserrat;

  static double responsiveFont(BuildContext context, double fontSize) {
    double scale = scaleFactorCalc(context);
    double scaledFontSize = fontSize * scale;

    double max = fontSize * 1.2;
    double min = fontSize * 0.8;

    return scaledFontSize.clamp(min, max);
  }

  static double scaleFactorCalc(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }

  static TextStyle getTextStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.w400,
    required BuildContext context,
    AppFontFamily? fontFamily,
  }) {
    final double adjustedFontSize = responsiveFont(context, fontSize);
    final Color color = _getColor(fontSize);
    final AppFontFamily selectedFont = fontFamily ?? defaultFont;

    if (selectedFont.isGoogleFont) {
      switch (selectedFont) {
        case AppFontFamily.montserrat:
          return GoogleFonts.montserrat(
            fontSize: adjustedFontSize,
            fontWeight: fontWeight,
            color: color,
          );
        case AppFontFamily.cairo:
          return GoogleFonts.cairo(
            fontSize: adjustedFontSize,
            fontWeight: fontWeight,
            color: color,
          );
        case AppFontFamily.roboto:
          return GoogleFonts.roboto(
            fontSize: adjustedFontSize,
            fontWeight: fontWeight,
            color: color,
          );
        default:
          throw Exception("Unknown Google Font");
      }
    } else {
      return TextStyle(
        fontSize: adjustedFontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: selectedFont.localFontFamilyName,
      );
    }
  }

  static Color _getColor(double fontSize) {
    if (fontSize <= 16) {
      return AppColor.gray;
    } else if (fontSize <= 24) {
      return AppColor.white;
    } else {
      return AppColor.back;
    }
  }

  // ======= Named font styles =========
  static TextStyle textStyle12(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 12,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle13(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 13,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle14(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 14,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle16(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 16,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle18(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 18,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle20(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 20,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle22(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 22,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle24(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 24,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle26(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 26,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle28(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 28,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle30(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 30,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle32(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 32,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );

  static TextStyle textStyle50(
    BuildContext context, {
    FontWeight fontWeight = FontWeight.w400,
    AppFontFamily? fontFamily,
  }) => getTextStyle(
    fontSize: 50,
    context: context,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}
