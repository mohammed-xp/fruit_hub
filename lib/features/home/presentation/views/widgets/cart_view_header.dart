import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

import '../../../../../generated/l10n.dart';

class CartViewHeader extends StatelessWidget {
  const CartViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(color: AppColor.lightPrimaryColor2),
      child: Text(
        '${S.of(context).youHave} 3 ${S.of(context).productsInYourCart}',
        textAlign: TextAlign.center,
        style: AppStyles.styleRegular13(context).copyWith(
          color: const Color(0xFF1B5E37),
        ),
      ),
    );
  }
}
