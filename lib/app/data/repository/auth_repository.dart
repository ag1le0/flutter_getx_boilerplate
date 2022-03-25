import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/models/login_request.dart';
import 'package:flutter_base/app/data/provider/network/utils/api_utils.dart';

class AuthRepository {
  final _client = ApiUtil.getApiClient();

  Future<Token?> login(username, password) async {
    var body = LoginRequest(username, password);
    var res = await _client.login(body);
    return res.result;
  }
}
