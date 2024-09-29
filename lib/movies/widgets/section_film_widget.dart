import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/movies/widgets/movies_list_firebase_widget.dart';
import 'package:flutter_with_firebase/movies/widgets/movies_list_popular_widget.dart';
import 'package:flutter_with_firebase/themes/colors_them.dart';

class SectionFilmsWidget extends StatelessWidget {
  const SectionFilmsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.darkBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: const ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Esta es la lista de las peliculas populares de origen
              MoviesListPopularWidget(
                titleSection: "RECOMENDADO PARA TI",
              ),
              //Esta es la lista de películas ordenadas en función de la popularidad
              MoviesListFirebaseWidget(
                titleSection: "PELÍCULAS DESDE FIREBASE",
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
