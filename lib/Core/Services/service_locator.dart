import 'package:get_it/get_it.dart';
import 'package:movies/Movies/data/data_source/movie_remote_data_source.dart';
import 'package:movies/Movies/data/repository/movies_reposoitory.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';
import 'package:movies/Movies/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_papular_movie_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_recommendation_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies/Movies/presentation/controller/movie_details_bloc.dart';
import 'package:movies/Movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void inti() {
    sl.registerLazySingleton(() => MoviesBloc(
          sl(),
          sl(),
          sl(),
        ));
    sl.registerLazySingleton(() => MovieDetailsBloc(
          sl(),
          sl(),
        ));
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
