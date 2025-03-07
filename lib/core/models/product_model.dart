import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/helper_functions/get_average_rating.dart';
import 'package:fruit_hub/core/models/review_model.dart';

class ProductModel {
  final String name;
  final String description;
  final num price;
  final String code;
  final bool isFeatured;

  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final int unitAmount;
  final num averageRating;
  final num ratingCount = 0;
  final List<ReviewModel> reviews;
  final num sellingCount;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.isFeatured,
    this.imageUrl,
    required this.expirationMonths,
    required this.isOrganic,
    required this.numOfCalories,
    required this.unitAmount,
    required this.averageRating,
    required this.reviews,
    required this.sellingCount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      code: json['code'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      // image: File(''),
      expirationMonths: json['expirationMonths'],
      isOrganic: json['isOrganic'],
      numOfCalories: json['numOfCalories'],
      unitAmount: json['unitAmount'],
      averageRating: getAverageRating(List.from(json['reviews'])),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e))
          .toList(),
      sellingCount: json['sellingCount'],
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      description: description,
      price: price,
      code: code,
      isFeatured: isFeatured,
      imageUrl: imageUrl,
      // image: image,
      expirationMonths: expirationMonths,
      isOrganic: isOrganic,
      numOfCalories: numOfCalories,
      unitAmount: unitAmount,
      reviews: reviews.map((ReviewModel r) => r.toEntity()).toList(),
    );
  }

  toJson() {
    return {
      "name": name,
      "description": description,
      "price": price,
      "code": code,
      "isFeatured": isFeatured,
      "imageUrl": imageUrl,
      "expirationMonths": expirationMonths,
      "numOfCalories": numOfCalories,
      "unitAmount": unitAmount,
      "isOrganic": isOrganic,
      "reviews": reviews.map((ReviewModel r) => r.toJson()).toList(),
    };
  }
}
