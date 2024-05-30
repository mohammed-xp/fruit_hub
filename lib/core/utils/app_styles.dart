import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular11(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w400,
        color: const Color(0xff949D9E),
        fontFamily: 'Cairo',
      );

  static TextStyle styleRegular13(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w400,
        color: const Color(0xff949D9E),
        fontFamily: 'Cairo',
      );

  static TextStyle styleRegular16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        color: const Color(0xff0C0D0D),
        fontFamily: 'Cairo',
      );

  static TextStyle styleSemiBold11(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w600,
        color: const Color(0xff1B5E37),
        fontFamily: 'Cairo',
      );

  static TextStyle styleSemiBold13(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w600,
        color: const Color(0xff4E5556),
        fontFamily: 'Cairo',
      );

  static TextStyle styleSemiBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        color: const Color(0xff0C0D0D),
        fontFamily: 'Cairo',
      );

  static TextStyle styleBold13(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w700,
        color: const Color(0xff181001),
        fontFamily: 'Cairo',
      );

  static TextStyle styleBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        color: const Color(0xff0C0D0D),
        fontFamily: 'Cairo',
      );

  static TextStyle styleBold19(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 19),
        fontWeight: FontWeight.w700,
        color: const Color(0xff0C0D0D),
        fontFamily: 'Cairo',
      );

  static TextStyle styleBold23(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 23),
        fontWeight: FontWeight.w700,
        color: const Color(0xff0C0D0D),
        fontFamily: 'Cairo',
      );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = _getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double _getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}
