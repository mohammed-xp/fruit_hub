import 'dart:io';

import 'package:fruit_hub/core/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String description;
  final num price;
  final String code;
  final bool isFeatured;
  File? image;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final int unitAmount;
  final num averageRating = 0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.isFeatured,
    this.image,
    this.imageUrl,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
    this.isOrganic = false,
    required this.reviews,
  });
}
