import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie.dart';
import '../resources/api_key.dart';

class ApiService {
  final String _baseUrl = 'https://api.themoviedb.org/3';

  // Fetch popular movies
  Future<List<Movie>> fetchPopularMovies() async {
    final response = await http.get(
      Uri.parse(
          '$_baseUrl/movie/popular?api_key=$tmdbApiKey&language=en-US&page=1'), // Passing query parameters
    );

    if (response.statusCode == 200) {
      final rawData = await jsonDecode(response.body);
      final data = rawData['results'];
      List<Movie> movies = [];
      for (int i = 0; i < data.length; i++) {
        final mapRaw = data[i];
        final movie = Movie.fromJson(mapRaw);
        movies.add(movie);
      }

      return movies;
    } else {
      throw Exception('Failed to load popular movies');
    }
  }

  // Fetch movie details by ID
  Future<Movie> fetchMovieDetails(int movieId) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/$movieId?api_key=$tmdbApiKey&language=en-US'),
    );

    if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movie details');
    }
  }
}
