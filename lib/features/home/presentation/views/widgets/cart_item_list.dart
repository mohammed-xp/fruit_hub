import 'package:flutter/material.dart';

import '../../../domain/entites/cart_item_entity.dart';
import 'cart_item.dart';
import 'custom_divider.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.cartItems});

  final List<CartItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: cartItems.length,
      // physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const CustomDivider(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: CartItem(
          cartItemEntity: cartItems[index],
        ),
      ),
    );
  }
}
