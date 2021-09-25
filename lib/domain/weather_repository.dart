import 'package:weatheria/domain/config.dart';
import 'package:weatheria/domain/weather_service.dart';
import 'package:weatheria/models/current.dart';
import 'package:weatheria/mappers/currrent_weather_mapper.dart';

class WeatherRepository {
  final WeatherService service;

  WeatherRepository({required this.service});

  Future<CurrentWeather> getCurrentWeather() async {
    var response =
        await service.getCurrentWeather(Config.apiKey, 'Rizal, Nueva Ecija', 'no');
    return response.toDomain();
  }
}
