import 'package:json_annotation/json_annotation.dart';

part 'common_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class CommonResponse<T> {
  String? status;
  String? code;
  String? message;
  T? result;

  factory CommonResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$CommonResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$CommonResponseToJson(this, toJsonT);

  CommonResponse({
    this.status,
    this.code,
    this.message,
    this.result,
  });
}
