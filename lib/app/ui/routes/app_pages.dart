import 'package:get/get.dart';

import '../bindings/bindings.dart';
import '../middleware/global_middleware.dart';
import '../pages/pages.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.init, page: () => const SplashPage()),
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding(),
        middlewares: [GlobalMiddleware()]),
    GetPage(
        name: Routes.login,
        page: () => const LoginPage(),
        binding: LoginBinding(),
        middlewares: [GlobalMiddleware()]),
  ];
}
