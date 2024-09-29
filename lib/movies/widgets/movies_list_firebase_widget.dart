import 'package:flutter_with_firebase/movies/structure/controllers/movies_controller.dart';
import 'package:flutter_with_firebase/movies/widgets/movies_list_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MoviesListFirebaseWidget extends StatelessWidget {
  final String titleSection;
  const MoviesListFirebaseWidget({
    Key? key,
    required this.titleSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoviesController>(builder: (controller) {
      // return MoviesListWidget(titleSection: titleSection, movies: []);
      
      //Esta lista es la lista peliculas populares ordenadas de mayor a menor valoración
      controller.getMoviesFromFirebase();
      return Obx(() => MoviesListWidget(
            // ignore: invalid_use_of_protected_member
            movies: controller.firebaseMovies.value,
            titleSection: titleSection,
          ));
    });
  }
}
