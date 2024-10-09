import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_styles.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: FittedBox(
            child: Text(
              text,
              style: AppStyles.styleBold13(context).copyWith(
                color: AppColor.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
