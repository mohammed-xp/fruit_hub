import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper_functions/get_function.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';
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
        DateTime.now().hour >= 12
            ? S.of(context).goodNight
            : S.of(context).goodMorning,
        style: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        getUser().name,
        style: AppStyles.styleBold16(context),
      ),
      trailing: const NotificationWidget(),
    );
  }
}
