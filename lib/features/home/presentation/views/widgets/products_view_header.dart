import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({
    super.key,
    required this.productsCount,
  });

  final int productsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$productsCount ${S.of(context).results}',
          style: AppStyles.styleBold16(context),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesFilter2Icon),
        ),
      ],
    );
  }
}
