import 'package:dio_http/dio_http.dart';
import 'package:soccer_app/constants/constants.dart';

class NetworkInterceptor extends Interceptor {
  Dio networkDio;
  int retry = -1;
  int? userId;

  NetworkInterceptor(this.networkDio) {
    {}
  }

  @override
  Future onRequest(RequestOptions options, handler) async {
    options.headers['x-apisports-key'] = Constants.apiKey;
    // options.headers['Authorization'] = 'Bearer ${accessToken?.token}';
    return handler.next(options);
  }

  @override
  Future onResponse(Response response, handler) async {
    return handler.next(response);
  }
}
