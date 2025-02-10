import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_item_list.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_view_header.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../generated/l10n.dart';
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
            const SliverToBoxAdapter(
              child: CustomDivider(),
            ),
            const CartItemList(),
            const SliverToBoxAdapter(
              child: CustomDivider(),
            ),
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.07,
          left: 16,
          right: 16,
          child: CustomButton(
            onPressed: () {},
            text: 'الدفع 22 جنيه',
          ),
        ),
      ],
    );
  }
}
