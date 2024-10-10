import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class ActiveBottomNavigationBarItem extends StatelessWidget {
  const ActiveBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon, title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsetsDirectional.only(end: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFEEEEEE),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: SvgPicture.asset(icon)),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: AppStyles.styleSemiBold11(context),
            ),
          ],
        ),
      ),
    );
  }
}
