import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_network_image.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:svg_flutter/svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(
            height: 92,
            child: AspectRatio(
              aspectRatio: 73 / 92,
              child: Container(
                // width: 73,
                // height: 92,
                padding: const EdgeInsets.all(8),
                color: const Color(0xffF3F5F7),
                child: const CustomNetworkImage(
                  imageUrl:
                      'https://www.piclumen.com/wp-content/uploads/2024/10/piclumen-marquee-04.webp',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      'بطيخ',
                      style: AppStyles.styleBold13(context),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.imagesTrashIcon),
                    ),
                  ],
                ),
                Text(
                  '3 كم',
                  style: AppStyles.styleRegular13(context)
                      .copyWith(color: AppColor.secendaryColor),
                ),
                Row(
                  children: [
                    const CartItemActionButtons(),
                    const Spacer(),
                    Text(
                      '60 جنيه',
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
  }
}
