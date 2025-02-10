import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

import 'cart_item_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add,
          iconColor: Colors.white,
          color: AppColor.primaryColor,
          onPressed: () {},
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          "1",
          style: AppStyles.styleBold16(context),
        ),
        const SizedBox(
          width: 16,
        ),
        CartItemActionButton(
          icon: Icons.remove,
          iconColor: const Color(0xff979899),
          color: const Color(0xffF3F5F7),
          onPressed: () {},
        )
      ],
    );
  }
}
