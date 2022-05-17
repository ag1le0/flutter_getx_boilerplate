import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  String username, password;

  LoginRequest(this.username, this.password);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
