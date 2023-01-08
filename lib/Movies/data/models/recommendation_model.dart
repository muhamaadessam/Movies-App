import 'package:movies/Movies/domain/entities/Recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    super.backgroundPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backgroundPath: json["backdrop_path"]??'/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
        id: json["id"],
      );
}
