import 'package:flutter/widgets.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_styles.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).dontHaveAccount,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: const Color(0xff949D9E),
            ),
          ),
          const TextSpan(text: " "),
          TextSpan(
            text: S.of(context).createAccount,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
