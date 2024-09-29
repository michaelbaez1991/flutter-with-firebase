import 'dart:convert';
import 'package:flutter_with_firebase/movies/models/popular_movies_model.dart';
import 'package:flutter_with_firebase/movies/services/movies_api_repository.dart';
import 'package:http/http.dart';

class MoviesRepository {
  Future<PopularMovies> popularMovies() async {
    try {
      Response bodyRes = await MoviesApiRepository().getReqResPopularMovies();
      final body = bodyRes.body;
      print(body);

      final PopularMovies newPopularMovies = PopularMovies.fromJson(jsonDecode(body));
      print(newPopularMovies);

      return newPopularMovies;
    } catch (e) {
      return PopularMovies();
    }
  }
}