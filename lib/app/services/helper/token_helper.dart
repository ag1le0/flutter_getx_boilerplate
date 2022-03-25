import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/utils/prefs_manager.dart';

enum Key { token }

class TokenHelper {
  final PrefsManager _storage = PrefsManager();

  TokenHelper._internal();

  static final TokenHelper _singleton = TokenHelper._internal();

  factory TokenHelper() {
    return _singleton;
  }

  factory TokenHelper.getInstance() {
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
}
