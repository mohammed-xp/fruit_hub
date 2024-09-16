import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1000;
  static const double tablet = 600;

  static late double height, width;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
