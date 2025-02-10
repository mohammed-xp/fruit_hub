import 'package:flutter/material.dart';

import 'cart_item.dart';
import 'custom_divider.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 8,
      // physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const CustomDivider(),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: CartItem(),
      ),
    );
  }
}
