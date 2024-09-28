import 'package:flutter_with_firebase/auth/pages/loading_page.dart';
import 'package:flutter_with_firebase/auth/pages/login_page.dart';
import 'package:flutter_with_firebase/auth/pages/register_page.dart';
import 'package:flutter_with_firebase/movies/pages/movies_home.dart';
import 'package:flutter_with_firebase/movies/structure/bindings/movies_binding.dart';
import 'package:flutter_with_firebase/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOADING, 
      page: () => const LoadingPage()
    ),
    GetPage(
      name: Routes.LOGIN, 
      page: () => const LoginPage()
    ),
    GetPage(
      name: Routes.REGISTER, 
      page: () => const RegisterPage()
    ),
    // GetPage(
    //   name: Routes.HOME,
    //   page: () => const MoviesHome(),
    //   binding: MoviesBinding(),
    // ),
  ];
}