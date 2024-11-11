import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/best_selling_fruits.dart/presentation/views/best_selling_view.dart';
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
        TextButton(
          onPressed: () =>
              Navigator.pushNamed(context, BestSellingView.routeName),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero, // تعيين الـ padding إلى صفر
          ),
          child: Text(
            S.of(context).more,
            style: AppStyles.styleRegular13(context),
          ),
        ),
      ],
    );
  }
}
