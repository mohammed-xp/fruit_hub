import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class InActiveBottomNavigationBarItem extends StatelessWidget {
  const InActiveBottomNavigationBarItem({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}
