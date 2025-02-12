import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffF2F3F3),
          radius: 10,
          child: Text(
            '2',
            style: AppStyles.styleSemiBold13(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          S.of(context).shipping,
          style: AppStyles.styleBold13(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
      ],
    );
  }
}
