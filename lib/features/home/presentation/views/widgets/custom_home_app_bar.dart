import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        S.of(context).goodMorning,
        style: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        'محمد عادل',
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        decoration: const ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: SvgPicture.asset(Assets.imagesNotification),
        ),
      ),
    );
  }
}
