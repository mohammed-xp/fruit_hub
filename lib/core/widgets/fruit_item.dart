import 'package:flutter/material.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_network_image.dart';
import 'package:svg_flutter/svg_flutter.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              productEntity.imageUrl != null
                  ? Flexible(
                      child: CustomNetworkImage(
                        imageUrl: productEntity.imageUrl!,
                      ),
                    )
                  : Container(
                      color: Colors.white,
                      height: 100,
                      width: 100,
                    ),
              const SizedBox(
                height: 24,
              ),
              ListTile(
                title: Text(
                  productEntity.name,
                  style: AppStyles.styleSemiBold13(context).copyWith(
                    color: Colors.black,
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: productEntity.price.toString(),
                        style: AppStyles.styleBold13(context).copyWith(
                          color: AppColor.secendaryColor,
                        ),
                      ),
                      TextSpan(
                        text: " / ",
                        style: AppStyles.styleBold13(context).copyWith(
                          color: const Color(0xffF4A91F),
                        ),
                      ),
                      TextSpan(
                        text: "${productEntity.unitAmount}",
                        style: AppStyles.styleSemiBold13(context).copyWith(
                          color: AppColor.lightSecendaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: const CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  child: Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.imagesHeartIcon,
            ),
          ),
        ],
      ),
    );
  }
}
