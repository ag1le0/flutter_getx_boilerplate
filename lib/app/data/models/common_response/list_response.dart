import 'package:json_annotation/json_annotation.dart';

part 'list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ListResponse<T> {
  String? status;
  String? code;
  String? message;
  int? size;
  List<T>? result;

  ListResponse({
    this.status,
    this.code,
    this.message,
    this.size,
    this.result,
  });

  factory ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ListResponseToJson(this, toJsonT);
}
