import 'package:dio/dio.dart';
import 'package:flutter_base/app/utils/constants.dart';

import '../api_client.dart';
import 'api_interceptors.dart';

class ApiUtil {
  ApiUtil._();

  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = 60000;
      dio!.interceptors.add(ApiInterceptors());
    }
    return dio!;
  }

  static ApiClient getApiClient() {
    final apiClient = ApiClient(getDio(), baseUrl: Constants.baseUrl);
    return apiClient;
  }
}
