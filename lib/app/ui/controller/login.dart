import 'package:flutter/cupertino.dart';
import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/entities/user.dart';
import 'package:flutter_base/app/data/repository/auth_repository.dart';
import 'package:flutter_base/app/services/auth_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthRepository _authRepository = Get.find();
  final AuthService _authService = Get.find();

  final usernameController = TextEditingController(text: 'hehehehe');
  final passwordController = TextEditingController(text: '123456');
  final _remember = true.obs;
  get remember => _remember.value;

  login() async {
    // _authService.saveToken(
    //     await _authRepository.login(
    //       usernameController.text,
    //       passwordController.text,
    //     ),
    //     remember: remember);
    // _authService.saveUser(await _authRepository.getUserInformation(),
    //     remember: remember);
    _authService.saveUser(User());
    _authService.saveToken(Token());

    _authService.login();
  }
}
