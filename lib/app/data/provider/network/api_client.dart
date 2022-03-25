import 'package:dio/dio.dart';
import 'package:flutter_base/app/data/entities/token.dart';
import 'package:flutter_base/app/data/entities/user.dart';
import 'package:flutter_base/app/data/models/common_response/common_response.dart';
import 'package:flutter_base/app/data/models/login_request.dart';
import 'package:flutter_base/app/utils/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/getToken")
  Future<CommonResponse<Token>> login(@Body() LoginRequest body);

  @POST("/user_information")
  Future<CommonResponse<User>> getUserInfo();

  @POST("/logout")
  Future<dynamic> signOut();
}
