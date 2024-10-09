import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.sizeOf(context).width - (16 + 16);
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        height: 158,
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                top: 0,
                right: itemWidth * 0.4,
                child: Image.asset(
                  Assets.imagesWatermelonTest,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: itemWidth * 0.5,
                padding: const EdgeInsets.only(right: 25),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(
                      Assets.imagesFeaturedItemBackground,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "عروض العيد",
                      style: AppStyles.styleRegular13(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "خصم 25%",
                      style: AppStyles.styleBold19(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    FeaturedItemButton(
                      text: S.of(context).shopNow,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
