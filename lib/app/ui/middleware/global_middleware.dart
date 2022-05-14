import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/auth_service.dart';
import '../routes/app_pages.dart';

class GlobalMiddleware extends GetMiddleware {
  final AuthService _authService = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    bool authed = _authService.isLogin;

    bool isLoginRoute = (route == Routes.login);

    if (authed) {
      if (isLoginRoute) {
        _authService.logout();
      }
    } else {
      if (!isLoginRoute) {
        return const RouteSettings(name: Routes.login);
      }
    }
    return null;
  }
}
