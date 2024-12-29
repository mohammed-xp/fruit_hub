import 'package:fruit_hub/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: "Mango",
    description: "Mango",
    price: 100,
    code: "123",
    isFeatured: true,
    imageUrl: null,
    expirationMonths: 12,
    isOrganic: true,
    numOfCalories: 100,
    unitAmount: 1,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() => List.generate(
      10,
      (index) => getDummyProduct(),
    );
