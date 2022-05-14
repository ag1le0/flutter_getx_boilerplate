import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/entities/user.dart';
import 'package:flutter_base/app/data/models/login_request.dart';
import 'package:flutter_base/app/data/provider/network/utils/api_utils.dart';
import 'package:flutter_base/app/data/provider/network/utils/common_error.dart';

class AuthRepository {
  final _client = ApiUtil.getApiClient();

  Future<Token> login(username, password) async {
    var body = LoginRequest(username, password);
    var res = await _client.login(body);
    if (res.result != null) {
      return res.result!;
    } else {
      throw CommonError.fromRes(res);
    }
  }

  Future<User> getUserInformation() async {
    var res = await _client.getUserInfo();
    if (res.result != null) {
      return res.result!;
    } else {
      throw CommonError.fromRes(res);
    }
  }
}
