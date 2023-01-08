import 'package:dartz/dartz.dart';
import 'package:movies/Movies/domain/entities/Recommendation.dart';
import 'package:movies/Movies/domain/entities/movie.dart';
import 'package:movies/Movies/domain/entities/movie_detail.dart';
import 'package:movies/Movies/domain/usecase/get_movie_detail_usecase.dart';

import '../../../Core/Error/failure.dart';
import '../usecase/get_recommendation_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovie();

  Future<Either<Failure, List<Movie>>> getTopRatedMovie();

  Future<Either<Failure, MovieDetail>> getMovieDetails(MovieDetailsParameters parameters);
  Future<Either<Failure, List<Recommendation>>> getRecommendation(RecommendationParameters parameters);
}
