import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

import '../../../domain/entites/cart_item_entity.dart';
import '../../cubits/cart_item_cubit/cart_item_cubit.dart';
import 'cart_item_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add,
          iconColor: Colors.white,
          color: AppColor.primaryColor,
          onPressed: () {
            cartItemEntity.increaseQuantity();
            context.read<CartItemCubit>().update(cartItemEntity);
          },
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          "${cartItemEntity.count}",
          style: AppStyles.styleBold16(context),
        ),
        const SizedBox(
          width: 16,
        ),
        CartItemActionButton(
          icon: Icons.remove,
          iconColor: const Color(0xff979899),
          color: const Color(0xffF3F5F7),
          onPressed: () {
            cartItemEntity.decreaseQuantity();
            context.read<CartItemCubit>().update(cartItemEntity);
          },
        )
      ],
    );
  }
}
