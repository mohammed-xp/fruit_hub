import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.index, required this.text});

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffF2F3F3),
          radius: 10,
          child: Text(
            index.toString(),
            style: AppStyles.styleSemiBold13(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: AppStyles.styleBold13(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
      ],
    );
  }
}
