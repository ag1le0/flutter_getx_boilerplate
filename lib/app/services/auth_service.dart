import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/entities/user.dart';
import 'package:flutter_base/app/ui/routes/app_pages.dart';
import 'package:get/get.dart';

import 'helper/auth_helper.dart';

class AuthService extends GetxService {
  AuthService._internal();

  static final AuthService _singleton = AuthService._internal();

  factory AuthService() {
    return _singleton;
  }

  factory AuthService.getInstance() {
    return _singleton;
  }

  Token? _token;
  User? _user;

  Future<AuthService> init() async {
    _token = await AuthHelper().getToken();
    _user = await AuthHelper().getUser();
    return _singleton;
  }

  /// Handle Token
  Token? get token {
    return _token;
  }

  Future saveToken(Token token, {bool remember = true}) async {
    _token = token;
    if (remember) return AuthHelper().saveToken(token);
  }

  Future deleteToken() async {
    _token = null;
    return AuthHelper().removeToken();
  }

  /// Handle User
  User get user {
    assert(_user != null, "Login user must provide before use");
    return _user!;
  }

  Future saveUser(User user, {bool remember = true}) async {
    _user = user;
    if (remember) return AuthHelper().saveUser(user);
  }

  Future deleteUser() async {
    _user = null;
    return AuthHelper().removeUser();
  }

  /// SignOut
  void logout() async {
    deleteToken();
    deleteUser();
    Get.offAllNamed(Routes.login);
  }

  /// login
  Future login() async {
    if (isLogin) {
      Get.offAllNamed(Routes.home);
    } else {
      Get.offAllNamed(Routes.login);
    }
  }

  bool get isLogin => _token != null && _user != null;
}
