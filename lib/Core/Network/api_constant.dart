class APIConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'ce6a794714557b60b918edc26919aa65';
  static const String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath =
      '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath =
      '$baseUrl/movie/top_rated?api_key=$apiKey';

  static String movieDetailsPath(int movieID) =>
      '$baseUrl/movie/$movieID?api_key=$apiKey';
  static String recommendationPath(int movieID) =>
      '$baseUrl/movie/$movieID/recommendations?api_key=$apiKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
