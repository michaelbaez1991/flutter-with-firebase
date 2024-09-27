import 'package:flutter_with_firebase/auth/pages/loading_page.dart';
import 'package:flutter_with_firebase/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOADING, 
      page: () => const LoadingPage()
    )
  ];
}