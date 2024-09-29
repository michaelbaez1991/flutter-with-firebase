import 'package:flutter_with_firebase/movies/models/popular_movies_model.dart';
import 'package:flutter_with_firebase/movies/services/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController {
  Rx<PopularMovies> popularMovies = PopularMovies().obs;

  // RxList<Movie> firebaseMovies = <Movie>[].obs;

  Future<void> getPopularMovies() async {
    final PopularMovies newPopularMovies = await MoviesRepository().popularMovies();
    print(popularMovies.value);
    
    popularMovies.value = newPopularMovies;
  }

  // Future<void> getMoviesFromFirebase() async {
  //   final List<Movie> newMovies =
  //       await MoviesFirebaseRepository().getMoviesFirebase();
  //   print(popularMovies.value);
  //   firebaseMovies.value = newMovies;
  // }
}