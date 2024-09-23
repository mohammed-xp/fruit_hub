import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_styles.dart';

class SoicalTextButton extends StatelessWidget {
  const SoicalTextButton({
    super.key,
    required this.title,
    required this.image,
    this.onPressed,
  });
  final String title;
  final String image;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(
              width: 1,
              color: Color(0xffDDDFDF),
            ),
          ),
        ),
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
      ),
    );
  }
}
