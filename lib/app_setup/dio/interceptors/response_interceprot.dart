import 'package:dio/dio.dart';

class ResponseInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
