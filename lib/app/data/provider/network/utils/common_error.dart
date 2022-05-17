import 'package:dio/dio.dart';

import '../../../models/response/common_response/common_response.dart';
import 'deprecated_dio_error.dart';

class CommonError extends DeprecatedDioError {
  final String status;
  final String code;
  final String _message;

  CommonError(
      {this.status = '',
      this.code = '',
      String message = '',
      RequestOptions? requestOptions})
      : _message = message {
    if (requestOptions != null) {
      this.requestOptions = requestOptions;
    }
  }

  factory CommonError.fromRes(CommonResponse res) {
    return CommonError(
      status: res.status ?? '',
      code: res.code ?? '',
      message: res.message ?? '',
    );
  }

  @override
  String toString() {
    return _message;
  }

  @override
  String get message => _message;
}
