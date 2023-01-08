import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Core/UseCase/base_usecase.dart';
import 'package:movies/Core/utils/enums.dart';
import 'package:movies/Movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_papular_movie_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies/Movies/presentation/controller/movies_events.dart';
import 'package:movies/Movies/presentation/controller/movies_states.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {

  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase, this.getTopRatedMoviesUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(
      (event, emit) async {
        final result =
            await getNowPlayingMoviesUseCase(const NoParameters());
        result.fold(
          (l) => emit(
            state.copyWith(
                nowPlayingMoviesState: RequestState.error,
                nowPlayingMessage: l.message
            ),
          ),
          (r) => emit(
            state.copyWith(
              nowPlayingMoviesState: RequestState.loaded,
              nowPlayingMovies: r,
            ),
          ),
        );
        // print(result);
      },
    );
    on<GetPopularMoviesEvent>(
      (event, emit) async {
        final result =
            await getPopularMoviesUseCase(const NoParameters());
        result.fold(
          (l) => emit(
            state.copyWith(
                popularMoviesState: RequestState.error,
                popularMessage: l.message
            ),
          ),
          (r) => emit(
            state.copyWith(
              popularMoviesState: RequestState.loaded,
              popularMovies: r,
            ),
          ),
        );
        // print(result);
      },
    );
    on<GetTopRatedMoviesEvent>(
      (event, emit) async {
        final result =
            await getTopRatedMoviesUseCase(const NoParameters());
        result.fold(
          (l) => emit(
            state.copyWith(
                topRatedMoviesState: RequestState.error,
                topRatedMessage: l.message
            ),
          ),
          (r) => emit(
            state.copyWith(
              topRatedMoviesState: RequestState.loaded,
              topRatedMovies: r,
            ),
          ),
        );
        // print(result);
      },
    );
  }
}
