import 'package:dio/dio.dart';

import '../../../../utils/constants.dart';

abstract class DeprecatedDioError implements DioError {
  static const deprecatedMessage = 'dio deprecated';
  static final defaultErrorRequestOptions =
      RequestOptions(path: Constants.baseUrl);

  @override
  String get message;

  @Deprecated(deprecatedMessage)
  @override
  dynamic error;

  RequestOptions _requestOptions = defaultErrorRequestOptions;

  @Deprecated(deprecatedMessage)
  @override
  RequestOptions get requestOptions => _requestOptions;

  @override
  set requestOptions(RequestOptions value) {
    _requestOptions = value;
  }

  @Deprecated(deprecatedMessage)
  @override
  Response? response;

  @Deprecated(deprecatedMessage)
  @override
  DioErrorType type = DioErrorType.other;

  @Deprecated(deprecatedMessage)
  @override
  StackTrace? stackTrace;
}
