import 'package:equatable/equatable.dart';

class MovieDetail extends Equatable {
  final String backgroundPath;
  final int id;
  final String overview;
  final String? releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;
  final List<Genres> genres;

  const MovieDetail({
    required this.backgroundPath,
    required this.id,
    required this.overview,
     this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
    required this.genres,
  });

  @override
  List<Object?> get props => [
        backgroundPath,
        id,
        overview,
        releaseDate,
        runtime,
        title,
        voteAverage,
        genres,
      ];
}

class Genres extends Equatable {
  final int id;
  final String? name;

  const Genres({
    required this.id,
     this.name,
  });

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
