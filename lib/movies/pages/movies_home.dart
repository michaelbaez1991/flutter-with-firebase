import 'package:flutter/material.dart';
// import 'package:flutter_with_firebase/auth/structure/controllers/auth_controller.dart';
// import 'package:flutter_with_firebase/movies/structure/controllers/movies_controller.dart';
import 'package:flutter_with_firebase/movies/widgets/section_film_widget.dart';
// import 'package:flutter_with_firebase_owp/movies/services/movies_firebase_repository.dart';
// import 'package:get/get.dart';

class MoviesHome extends StatelessWidget {
  const MoviesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AuthController authController = Get.find();
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            child: const Icon(Icons.close),
            onPressed: () {},
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "2",
            child: const Icon(Icons.read_more),
            onPressed: () {},
          )
        ],
      ),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Mis Películas",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(91, 161, 210, 1),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 2,
            child: SectionFilmsWidget(),
          ),
        ],
      ),
    );
  }
}
