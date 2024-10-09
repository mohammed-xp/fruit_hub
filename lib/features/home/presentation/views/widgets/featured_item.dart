import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.sizeOf(context).width - 32;
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
                left: isArabic(context) ? 0 : itemWidth * 0.4,
                bottom: 0,
                top: 0,
                right: isArabic(context) ? itemWidth * 0.4 : 0,
                child: Image.asset(
                  Assets.imagesFruitsTest,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: itemWidth * 0.5,
                padding: const EdgeInsetsDirectional.only(start: 25),
                decoration: ShapeDecoration(
                  color: const Color(0xFF5DB957),
                  shape: RoundedRectangleBorder(
                    borderRadius: isArabic(context)
                        ? const BorderRadius.only(
                            bottomLeft: Radius.elliptical(15, 55),
                            topLeft: Radius.elliptical(15, 55),
                          )
                        : const BorderRadius.only(
                            bottomRight: Radius.elliptical(15, 55),
                            topRight: Radius.elliptical(15, 55),
                          ),
                  ),

                  // image: DecorationImage(
                  //   image: svg.Svg(
                  //     Assets.imagesFeaturedItemBackground,
                  //   ),
                  //   fit: BoxFit.fill,

                  // ),
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
