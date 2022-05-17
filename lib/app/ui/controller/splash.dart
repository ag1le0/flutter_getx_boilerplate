import 'package:flutter_base/app/services/auth_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final AuthService _authService = Get.find();

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2))
        .whenComplete(() => _authService.login());
    super.onInit();
  }
}
