import 'package:flutter/material.dart';

import '../../../domain/entites/bottom_navigation_bar_entity.dart';
import 'active_bottom_navigation_bar_item.dart';
import 'in_active_bottom_navigation_bar_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.entity,
    required this.isActive,
  });

  final bool isActive;
  final BottomNavigationBarEntity entity;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveBottomNavigationBarItem(
            icon: entity.activeImage,
            title: entity.title,
          )
        : InActiveBottomNavigationBarItem(icon: entity.inActiveImage);
  }
}
