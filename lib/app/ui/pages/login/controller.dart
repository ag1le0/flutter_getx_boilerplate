import 'package:flutter_base/app/data/repository/auth_repository.dart';
import 'package:flutter_base/app/services/auth_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthRepository _authRepository = Get.find();
  final AuthService _authService = Get.find();

  login(String username, String password, bool remember) async {
    _authService.saveToken(
        await _authRepository.login(
          username,
          password,
        ),
        remember: remember);
    _authService.saveUser(await _authRepository.getUserInformation(),
        remember: remember);
    _authService.login();
  }
}
