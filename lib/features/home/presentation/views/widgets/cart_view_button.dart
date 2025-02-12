import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/cart_cubit/cart_cubit.dart';
import '../../cubits/cart_item_cubit/cart_item_cubit.dart';

class CartViewButton extends StatelessWidget {
  const CartViewButton({
    super.key,
    required this.onPressed,
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: onPressed,
          text:
              '${S.of(context).payment} ${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} ${S.of(context).sdg}',
        );
      },
    );
  }
}
