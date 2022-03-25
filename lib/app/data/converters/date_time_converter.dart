import 'package:flutter_base/app/utils/extensions/date_time_ext.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(String? timestamp) {
    return timestamp != null ? DateTimeExt.fromString(timestamp) : null;
  }

  @override
  String? toJson(DateTime? date) => date?.format();
}
