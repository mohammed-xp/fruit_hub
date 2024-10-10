import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).bestSeller,
          style: AppStyles.styleBold16(context),
        ),
        const Spacer(),
        Text(
          S.of(context).more,
          style: AppStyles.styleRegular13(context),
        ),
      ],
    );
  }
}
