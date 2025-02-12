import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_item_list.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_view_header.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/l10n.dart';
import 'cart_view_button.dart';
import 'custom_divider.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomAppBar(
                    context,
                    title: S.of(context).cart,
                    navigationIcon: false,
                    iconBackButton: true,
                  ),
                  const SizedBox(
                    height: kTopPadding,
                  ),
                  const CartViewHeader(),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? const SizedBox()
                  : const CustomDivider(),
            ),
            CartItemList(
              cartItems: context.read<CartCubit>().cartEntity.cartItems,
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? const SizedBox()
                  : const CustomDivider(),
            ),
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.07,
          left: 16,
          right: 16,
          child: CartViewButton(
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
