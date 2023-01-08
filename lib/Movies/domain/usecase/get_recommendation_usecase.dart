import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/Movies/domain/entities/Recommendation.dart';
import 'package:movies/Movies/domain/entities/movie_detail.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';

import '../../../Core/Error/failure.dart';
import '../../../Core/UseCase/base_usecase.dart';

class GetRecommendationUseCase extends BaseUseCase<List<Recommendation>, RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object?> get props => [
        id,
      ];
}
