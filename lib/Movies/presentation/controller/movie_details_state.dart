import 'package:equatable/equatable.dart';

import '../../../Core/utils/enums.dart';
import '../../domain/entities/Recommendation.dart';
import '../../domain/entities/movie_detail.dart';

class MovieDetailsState extends Equatable {
  final MovieDetail? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  const MovieDetailsState({
    this.movieDetails,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsMessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });

  MovieDetailsState copyWith({
    MovieDetail? movieDetails,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetails: movieDetails ?? this.movieDetails,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendation: recommendation ?? this.recommendation,
    );
  }

  @override
  List<Object?> get props => [
        movieDetails,
        movieDetailsState,
        movieDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
      ];
}
