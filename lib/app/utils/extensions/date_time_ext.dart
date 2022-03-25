import 'package:flutter_base/app/utils/constants.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  static DateTime? fromString(String date, {String? format}) {
    if ((format ?? "").isNotEmpty) {
      try {
        return DateFormat(format).parse(date);
      } catch (e) {}
    }
    try {
      return DateTime.parse(date);
    } catch (e) {}
    //
    try {
      return DateFormat(Constants.defaultDateFormat).parse(date);
    } catch (e) {}
    return null;
  }

  String format({String? format}) {
    return DateFormat(format).format(this);
  }

  DateTime startOfDay(DateTime dateTime) {
    return DateTime(year, month, day, 0, 0, 0);
  }

  DateTime endOfDay() {
    return DateTime(year, month, day, 23, 59, 59);
  }
}
