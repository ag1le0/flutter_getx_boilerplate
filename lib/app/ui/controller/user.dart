import 'package:flutter_base/app/services/auth_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final AuthService _authService = Get.find();

  @override
  void onInit() {
    super.onInit();
  }
}
