import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weatheria/domain/weather_repository.dart';
import 'package:weatheria/domain/weather_service.dart';
import 'package:weatheria/main.dart';

class WeatherDi extends DependencyInjection {
  @override
  void registerDependencies(GetIt c) {
    c.registerLazySingleton(() => WeatherService(c<Dio>()));
    c.registerLazySingleton(
        () => WeatherRepository(service: c<WeatherService>()));
  }
}
