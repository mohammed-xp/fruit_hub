import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';

import '../utils/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
    context, {
    super.key,
    required this.title,
    this.navigationIcon = true,
    this.iconBackButton = false,
    this.onPressedIconBackButton,
  });

  final String title;

  final bool? navigationIcon;
  final bool? iconBackButton;
  final void Function()? onPressedIconBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: AppStyles.styleBold19(context),
      ),
      centerTitle: true,
      leading: iconBackButton ?? false
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                if (onPressedIconBackButton != null) {
                  onPressedIconBackButton!();
                } else {
                  Navigator.of(context).pop();
                }
              },
            )
          : null,
      actions: [
        if (navigationIcon ?? false)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: NotificationWidget(),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(53.0);
}
