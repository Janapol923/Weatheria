import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weatheria/main.dart';

class NetworkDi extends DependencyInjection {
  @override
  registerDependencies(GetIt c) {
    var dio = Dio(BaseOptions(baseUrl: 'http://api.weatherapi.com/'));
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
    c.registerLazySingleton(() {
      return dio;
    });
  }
}
