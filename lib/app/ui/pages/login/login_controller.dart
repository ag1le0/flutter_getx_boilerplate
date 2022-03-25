import 'package:flutter_base/app/data/repository/auth_repository.dart';
import 'package:flutter_base/app/services/auth_service.dart';
import 'package:get/get.dart';

import 'login_state.dart';

class LoginController extends GetxController with StateMixin<LoginState> {
  final AuthRepository _authRepository = Get.find();
  final AuthService _authService = Get.find();

  login(String username, String password) async {
    var token = await _authRepository.login(username, password);
    if (token != null) {
      _authService.saveToken(token);
    }
  }
}
