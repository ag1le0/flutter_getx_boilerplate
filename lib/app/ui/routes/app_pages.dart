import 'package:flutter_base/app/services/auth_service.dart';
import 'package:get/get.dart';

import '../bindings/bindings.dart';
import '../middleware/auth_middleware.dart';
import '../pages/pages.dart';

part 'app_routes.dart';

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
        middlewares: [AuthMiddleware()]),
    GetPage(
      name: Routes.user,
      page: () => const UserPage(),
      binding: UserBinding(),
      middlewares: [AuthMiddleware()],
      children: [
        GetPage(
          name: '/:id',
          page: () => const UserDetailPage(),
          binding: UserDetailBinding(),
        ),
      ],
    ),
    GetPage(
        name: Routes.login,
        page: () => const LoginPage(),
        binding: LoginBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: Routes.logout,
        page: () {
          AuthService authService = Get.find();
          authService.clear();
          return const LoginPage();
        },
        binding: LoginBinding(),
        middlewares: [AuthMiddleware()]),
  ];
}
