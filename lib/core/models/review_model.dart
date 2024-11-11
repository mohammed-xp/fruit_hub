import 'package:fruit_hub/core/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final String date;
  final String reviewDesc;

  ReviewModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.date,
    required this.reviewDesc,
  });

  factory ReviewModel.fromEntity(ReviewEntity entity) {
    return ReviewModel(
      name: entity.name,
      image: entity.image,
      rating: entity.rating,
      date: entity.date,
      reviewDesc: entity.reviewDesc,
    );
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json["name"],
      image: json["image"],
      rating: json["rating"],
      date: json["date"],
      reviewDesc: json["reviewDesc"],
    );
  }

  ReviewEntity toEntity() {
    return ReviewEntity(
      name: name,
      image: image,
      rating: rating,
      date: date,
      reviewDesc: reviewDesc,
    );
  }

  toJson() {
    return {
      "name": name,
      "image": image,
      "rating": rating,
      "date": date,
      "reviewDesc": reviewDesc
    };
  }
}
