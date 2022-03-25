import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Token {
  String accessToken;

  String tokenType;

  String refreshToken;

  int expiresIn;

  String scope;

  String jti;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);

  Token({
    this.accessToken = '',
    this.tokenType = '',
    this.refreshToken = '',
    this.expiresIn = 0,
    this.scope = '',
    this.jti = '',
  });
}
