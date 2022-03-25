import 'package:flutter_base/app/ui/pages/home/home_binding.dart';
import 'package:flutter_base/app/ui/pages/home/home_page.dart';
import 'package:flutter_base/app/ui/pages/login/login_binding.dart';
import 'package:flutter_base/app/ui/pages/login/login_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
