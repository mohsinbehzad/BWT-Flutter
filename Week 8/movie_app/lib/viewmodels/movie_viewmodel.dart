import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../services/api_service.dart';

class MovieViewModel extends ChangeNotifier {
  List<Movie> _movies = [];
  bool _isLoading = true;

  List<Movie> get movies => _movies;
  bool get isLoading => _isLoading;

  final ApiService _apiService = ApiService();

  MovieViewModel() {
    fetchMovies();
  }

  Future<void> fetchMovies() async {
    _isLoading = true;
    notifyListeners();

    try {
      _movies = await _apiService.fetchPopularMovies();  // Correct method name
    } catch (e) {
      // Handle error
      print("Error fetching movies: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
