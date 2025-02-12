import 'package:equatable/equatable.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';

// ignore: must_be_immutable
class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({
    required this.productEntity,
    this.count = 0,
  });

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  increaseQuantity() {
    count++;
  }

  decreaseQuantity() {
    if (count > 0) {
      count--;
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
