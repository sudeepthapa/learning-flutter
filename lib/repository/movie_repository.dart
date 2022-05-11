import 'package:dio/dio.dart';

class MovieRepository {
  final String _apiKey = 'a3def4df6b53084196d9d17e076779d2';
  final String _baseURL = 'https://api.themoviedb.org/3';
  static String imageBaseURL = 'https://image.tmdb.org/t/p/original';

  Future getTrendingMovies() async {
    try {
      var response = await Dio().get('$_baseURL/trending/movie/week',
          queryParameters: {"api_key": _apiKey});
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
