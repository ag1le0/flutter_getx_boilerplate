import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_base/app/services/auth_service.dart';
import 'package:flutter_base/app/utils/logger.dart';
import 'package:get/get.dart' hide Response;

import '../../../models/response/common_response/common_response.dart';
import 'common_error.dart';

class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final method = options.method;
    final uri = options.uri;
    final data = options.data;
    final authService = Get.find<AuthService>();
    final token = authService.token;
    if (token != null && options.headers['Authorization'] == null) {
      options.headers['Authorization'] = 'Bearer ${token.accessToken}';
    }
    logger.log(
        "\n\n--------------------------------------------------------------------------------------------------------");
    if (method == 'GET') {
      logger.log(
          "✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers}",
          printFullText: true);
    } else {
      try {
        logger.log(
            "✈️ REQUEST[$method] => PATH: $uri \n Token: ${token?.accessToken} \n DATA: ${jsonEncode(data)}",
            printFullText: true);
      } catch (e) {
        logger.log(
            "✈️ REQUEST[$method] => PATH: $uri \n Token: ${token?.accessToken} \n DATA: $data",
            printFullText: true);
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final statusCode = response.statusCode;
    final uri = response.requestOptions.uri;
    final data = jsonEncode(response.data);
    logger.log("✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $data");

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    final uri = err.requestOptions.path;
    var data = "";
    try {
      data = jsonEncode(err.response?.data);
    } catch (e) {}
    logger.log("⚠️ ERROR[$statusCode] => PATH: $uri\n DATA: $data");
    if (statusCode == 401) {
      try {
        var res = CommonResponse.fromJson(
          err.response!.data,
          (json) => null,
        );
        if (res.status == 'UNAUTHORIZED' && res.code == 'AUTHENTICATION') {
          final authService = Get.find<AuthService>();
          authService.logout();
          return;
        }
      } catch (e) {}
    }
    if (err.response != null) {
      if (err.response!.data['message'] != null) {
        var res = CommonResponse.fromJson(
          err.response!.data,
          (json) => null,
        );
        handler.reject(CommonError.fromRes(res));
        return;
      }
      if (err.response!.data['error'] != null) {
        var res = CommonError(
            code: err.response!.data['error'],
            message: err.response!.data['error_description']);
        handler.reject(res);
        return;
      }
    }
    handler.reject(CommonError(message: err.toString()));
    return;
  }
}
