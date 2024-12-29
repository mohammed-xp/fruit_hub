import 'package:fruit_hub/core/models/review_model.dart';

num getAverageRating(List<ReviewModel> reviews) {
  num sum = 0;
  for (var review in reviews) {
    sum += review.rating;
  }
  return sum / reviews.length;
}
