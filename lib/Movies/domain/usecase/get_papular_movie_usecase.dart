import 'package:dartz/dartz.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';

import '../../../Core/Error/failure.dart';
import '../../../Core/UseCase/base_usecase.dart';
import '../entities/movie.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>,NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getPopularMovie();
  }
}