import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String title;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.title,
  });

  static List<BottomNavigationBarEntity> items(context) => [
        BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldHomeIcon,
          inActiveImage: Assets.imagesHomeIcon,
          title: S.of(context).home,
        ),
        BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldProductsIcon,
          inActiveImage: Assets.imagesProductsIcon,
          title: S.of(context).products,
        ),
        BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldShoppingCarIcon,
          inActiveImage: Assets.imagesShoppingCarIcon,
          title: S.of(context).shoppingCart,
        ),
        BottomNavigationBarEntity(
          activeImage: Assets.imagesBoldUserIcon,
          inActiveImage: Assets.imagesUserIcon,
          title: S.of(context).profile,
        ),
      ];
}
