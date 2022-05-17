import 'package:get/get.dart';

import '../bindings/bindings.dart';
import '../middleware/auth_middleware.dart';
import '../pages/404.dart';
import '../pages/pages.dart';

part './app_routes.dart';

abstract class AppPages {
  static final notFoundPage = GetPage(
    name: Routes.notFound,
    page: () => const NotFound(),
  );

  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding(),
        children: [
          GetPage(
              name: '/:id',
              page: () => const UserDetailPage(),
              binding: UserDetailBinding(),
              middlewares: [AuthMiddleware()]),
        ],
        middlewares: [
          AuthMiddleware()
        ]),
    GetPage(
        name: Routes.login,
        page: () => const LoginPage(),
        binding: LoginBinding(),
        middlewares: [AuthMiddleware()]),
  ];
}
