import 'package:dio/dio.dart';

import 'package:yts_bloc_2021/app_setup/dio/interceptors/error_interceptor.dart';
import 'package:yts_bloc_2021/app_setup/dio/interceptors/response_interceprot.dart';

const String requiredToken = 'tokenRequired';

class DioClient {
  
  Dio dioClient() {
    Dio dio = Dio();
    dio.options.baseUrl = "https://yts.mx/api/v2";
    dio.options.connectTimeout = 6000;
    dio.options.receiveTimeout = 6000;
    dio.options.contentType = Headers.jsonContentType;
    dio.options.extra = <String, Object>{requiredToken: false};
    dio.interceptors.addAll([
      ResponseInterceptor(),
      ErrorInterceptor(),
      LogInterceptor(),
    ]);
    return dio;
  }
}

