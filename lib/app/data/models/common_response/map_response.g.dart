// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapResponse<T> _$MapResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    MapResponse<T>(
      status: json['status'] as String?,
      code: json['code'] as String?,
      message: json['message'] as String?,
      size: json['size'] as int?,
      result: (json['result'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, fromJsonT(e)),
      ),
    );

Map<String, dynamic> _$MapResponseToJson<T>(
  MapResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'size': instance.size,
      'result': instance.result?.map((k, e) => MapEntry(k, toJsonT(e))),
    };
