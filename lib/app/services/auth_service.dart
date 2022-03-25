import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/entities/user.dart';
import 'package:flutter_base/app/ui/routes/app_pages.dart';
import 'package:get/get.dart';

import 'helper/token_helper.dart';

class AuthService extends GetxService {
  Token? _token;
  User? _user;

  Future<AuthService> init() async {
    final currentToken = await TokenHelper().getToken();
    _token = currentToken;
    return this;
  }

  /// Handle Token
  Token? get token => _token;

  void saveToken(Token token) {
    _token = token;
    return TokenHelper().saveToken(token);
  }

  void removeToken() {
    _token = null;
    return TokenHelper().removeToken();
  }

  /// Handle User
  User? get user => _user;

  void updateUser(User user) {
    _user = user;
  }

  void deleteUser() {
    _user = null;
  }

  /// SignOut
  void signOut() async {
    removeToken();
    deleteUser();
    Get.offAllNamed(Routes.login);
  }
}
