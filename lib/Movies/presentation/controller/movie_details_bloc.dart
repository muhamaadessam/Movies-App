import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_recommendation_usecase.dart';
import '../../../Core/utils/enums.dart';
import 'movie_details_event.dart';
import 'movie_details_state.dart';


class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {

  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>((event, emit) async {
      final result =
          await getMovieDetailsUseCase(MovieDetailsParameters(event.id));
      result.fold(
        (l) => emit(
          state.copyWith(
            movieDetailsState: RequestState.error,
            movieDetailsMessage: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            movieDetailsState: RequestState.loaded,
            movieDetails: r,
          ),
        ),
      );
      // print(result);
    });
    on<GetMovieRecommendationEvent>((event, emit) async {
      final result = await getRecommendationUseCase(
        RecommendationParameters(event.id),
      );
      result.fold(
        (l) => emit(
          state.copyWith(
              recommendationState: RequestState.error,
              recommendationMessage: l.message),
        ),
        (r) => emit(
          state.copyWith(
            recommendationState: RequestState.loaded,
            recommendation: r,
          ),
        ),
      );
      // print(result);
    });
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;
}
