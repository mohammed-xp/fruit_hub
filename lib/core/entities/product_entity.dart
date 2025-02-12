import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:fruit_hub/core/entities/review_entity.dart';

// ignore: must_be_immutable
class ProductEntity extends Equatable {
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

  @override
  // TODO: implement props
  List<Object?> get props => [code];
}
