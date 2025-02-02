import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/core/models/product_model.dart';
import 'package:fruit_hub/core/repos/products_repo/products_repo.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import 'package:fruit_hub/core/utils/backend_endpoint.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl(this.databaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts(
      context) async {
    try {
      var data = await databaseService.getData(
        path: BackendEndpoint.getProducts,
        query: {
          "limit": 10,
          "orderBy": "sellingCount",
          "descending": true,
        },
      );
      List<ProductEntity> products = (data as List<dynamic>)
          .map((e) => ProductModel.fromJson(e).toEntity())
          .toList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure(S.of(context).failerToGetProducts));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts(context) async {
    try {
      var data =
          await databaseService.getData(path: BackendEndpoint.getProducts);
      List<ProductEntity> products = (data as List<dynamic>)
          .map((e) => ProductModel.fromJson(e).toEntity())
          .toList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure(S.of(context).failerToGetProducts));
    }
  }
}
