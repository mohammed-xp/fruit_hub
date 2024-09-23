import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).alreadyHaveAnAccount,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: const Color(0xff949D9E),
            ),
          ),
          const TextSpan(text: " "),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: S.of(context).login,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
