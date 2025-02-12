import 'package:fruit_hub/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({
    required this.productEntity,
    this.count = 0,
  });
}
