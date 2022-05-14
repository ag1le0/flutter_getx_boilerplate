import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/entities/user.dart';
import 'package:flutter_base/app/utils/prefs_manager.dart';

enum Key { token, user }

class AuthHelper {
  final PrefsManager _storage = PrefsManager();

  AuthHelper._internal();

  static final AuthHelper _singleton = AuthHelper._internal();

  factory AuthHelper() {
    return _singleton;
  }

  factory AuthHelper.getInstance() {
    return _singleton;
  }

  //Save token
  void saveToken(Token token) async {
    await _storage.set(Key.token.name, token);
  }

  //Remove token
  void removeToken() async {
    await _storage.remove(Key.token.name);
  }

  //Get token
  Future<Token?> getToken() async {
    return await _storage.get(Key.token.name);
  }

  //Save user
  Future saveUser(User user) async {
    await _storage.set(Key.user.name, user);
  }

  //Remove user
  Future removeUser() async {
    await _storage.remove(Key.user.name);
  }

  //Get user
  Future<User?> getUser() async {
    var res = await _storage.get(Key.user.name);
    return res != null ? User.fromJson(res) : null;
  }
}
