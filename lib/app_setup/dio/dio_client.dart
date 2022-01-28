import 'package:dio/dio.dart';

import 'package:yts_bloc_2021/app_setup/dio/interceptors/error_interceptor.dart';
import 'package:yts_bloc_2021/app_setup/dio/interceptors/response_interceprot.dart';

const String requiredToken = 'tokenRequired';

class DioClient {
  Dio dioClient() {
    Dio _dio = Dio();
    _dio.options.baseUrl = "https://yts.mx/api/v2";
    _dio.options.connectTimeout = 6000;
    _dio.options.receiveTimeout = 6000;
    _dio.options.contentType = Headers.jsonContentType;
    _dio.options.extra = <String, Object>{requiredToken: false};
    _dio.interceptors.addAll([
      ResponseInterceptor(),
      ErrorInterceptor(),
      LogInterceptor(),
    ]);
    return _dio;
  }
}
