import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/Core/Error/failure.dart';
import 'package:movies/Core/UseCase/base_usecase.dart';
import 'package:movies/Movies/domain/entities/movie_detail.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetail,MovieDetailsParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailsParameters parameters) async{
  return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable{
  final int movieId;

  const MovieDetailsParameters(this.movieId);

  @override
  List<Object?> get props => [
    movieId
  ];


}