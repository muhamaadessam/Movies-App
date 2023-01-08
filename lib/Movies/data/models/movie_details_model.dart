import 'package:movies/Movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel({
    required super.backgroundPath,
    required super.id,
    required super.overview,
     super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
    required super.genres,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        backgroundPath: json["backdrop_path"]??'/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_data"]??'2022-06-29',
        runtime: json["runtime"],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        genres: List<GenresModel>.from(
          json["genres"].map(
            (e) => GenresModel.fromJson(json),
          ),
        ),
      );
}

class GenresModel extends Genres {
  const GenresModel({
    required super.id,
    super.name,
  });

  factory GenresModel.fromJson(Map<String, dynamic> json) => GenresModel(
        id: json["id"],
        name: json["name"]??'Family',
      );
}
