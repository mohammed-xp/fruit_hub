import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_network_image.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdated) {
          if (current.cartItemEntity == cartItemEntity) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        return IntrinsicHeight(
          child: Row(
            children: [
              SizedBox(
                height: 92,
                child: Container(
                  width: 73,
                  height: 92,
                  padding: const EdgeInsets.all(8),
                  color: const Color(0xffF3F5F7),
                  child: CustomNetworkImage(
                    imageUrl: cartItemEntity.productEntity.imageUrl!,
                  ),
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          cartItemEntity.productEntity.name,
                          style: AppStyles.styleBold13(context),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            context
                                .read<CartCubit>()
                                .deleteCartItem(cartItemEntity);
                          },
                          child: SvgPicture.asset(Assets.imagesTrashIcon),
                        ),
                      ],
                    ),
                    Text(
                      '${cartItemEntity.calculateTotalWeight()} ${S.of(context).kg}',
                      style: AppStyles.styleRegular13(context)
                          .copyWith(color: AppColor.secendaryColor),
                    ),
                    Row(
                      children: [
                        CartItemActionButtons(
                          cartItemEntity: cartItemEntity,
                        ),
                        const Spacer(),
                        Text(
                          '${cartItemEntity.calculateTotalPrice()} ${S.of(context).sdg}',
                          style: AppStyles.styleBold16(context)
                              .copyWith(color: AppColor.secendaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
