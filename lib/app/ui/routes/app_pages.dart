import 'package:flutter_base/app/ui/middleware/global_middleware.dart';
import 'package:flutter_base/app/ui/pages/home/binding.dart';
import 'package:flutter_base/app/ui/pages/home/index.dart';
import 'package:flutter_base/app/ui/pages/login/binding.dart';
import 'package:flutter_base/app/ui/pages/login/index.dart';
import 'package:flutter_base/app/ui/pages/splash/index.dart';
import 'package:get/get.dart';

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
