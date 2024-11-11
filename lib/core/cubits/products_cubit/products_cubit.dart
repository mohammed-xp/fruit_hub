import 'package:bloc/bloc.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/repos/products_repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());

  final ProductsRepo productsRepo;

  Future<void> getProducts(context) async {
    emit(ProductsLoading());
    var result = await productsRepo.getProducts(context);
    result.fold(
      (failure) => emit(ProductsFailer(failure.message)),
      (products) => emit(ProductsSuccess(products)),
    );
  }

  Future<void> getBestSellingProducts(context) async {
    emit(ProductsLoading());
    var result = await productsRepo.getBestSellingProducts(context);
    result.fold(
      (failure) => emit(ProductsFailer(failure.message)),
      (products) => emit(ProductsSuccess(products)),
    );
  }
}
