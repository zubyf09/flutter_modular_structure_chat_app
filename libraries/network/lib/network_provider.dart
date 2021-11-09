import 'package:dio/dio.dart';

class NetworkProvider {
  late String authorization;

  static Dio instance() {
    final dio = Dio();
    dio.options.headers["language"] = "en";
    dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));
    dio.options.headers['Accept'] = "application/json";
    return dio;
  }
}

enum DioErrorType {
  /// When opening  url timeout, it occurs.
  CONNECT_TIMEOUT,

  ///It occurs when receiving timeout.
  RECEIVE_TIMEOUT,

  /// When the server response, but with a incorrect status, such as 404, 503...
  RESPONSE,

  /// When the request is cancelled, dio will throw a error with this type.
  CANCEL,

  /// Default error type, Some other Error. In this case, you can
  /// read the DioError.error if it is not null.
  DEFAULT,
}
