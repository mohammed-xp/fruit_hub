import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActiveStepItem(),
      ],
    );
  }
}

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 13,
          child: SvgPicture.asset(Assets.imagesCheckIcon),
        ),
        const SizedBox(width: 4),
        Text(
          S.of(context).shipping,
          style: AppStyles.styleBold13(context).copyWith(
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
