import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:fruit_hub/generated/l10n.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChecked});

  final ValueChanged<bool> onChecked;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChecked(value);
            setState(() {});
          },
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).byCreateingAccount,
                  style: AppStyles.styleSemiBold13(context).copyWith(
                    color: const Color(0xff949D9E),
                  ),
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: S.of(context).ourTermsAndConditions,
                  style: AppStyles.styleSemiBold13(context).copyWith(
                    color: AppColor.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
