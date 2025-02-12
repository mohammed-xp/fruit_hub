import 'package:bloc/bloc.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_entity.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity(
    cartItems: [],
  );

  void addProduct(ProductEntity productEntity) {
    final bool isProductExist = cartEntity.isExist(productEntity);
    final CartItemEntity cartItemEntity = cartEntity.getCartItem(productEntity);
    if (isProductExist) {
      cartItemEntity.increaseQuantity();
    } else {
      cartEntity.addCartItem(cartItemEntity);
    }
    emit(CartProductAdded());
  }

  void deleteCartItem(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartItemRemoved());
  }
}
