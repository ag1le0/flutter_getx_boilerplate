import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/auth_service.dart';
import '../routes/app_pages.dart';

class AuthMiddleware extends GetMiddleware {
  final AuthService _authService = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    bool isLoginRoute = (route == Routes.login);

    if (_authService.isLogin) {
      if (isLoginRoute) {
        return const RouteSettings(name: Routes.home);
      }
    } else {
      if (!isLoginRoute) {
        return const RouteSettings(name: Routes.login);
      }
    }
    return null;
  }
}
