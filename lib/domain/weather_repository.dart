import 'package:weatheria/domain/config.dart';
import 'package:weatheria/domain/weather_service.dart';
import 'package:weatheria/models/current.dart';
import 'package:weatheria/mappers/currrent_weather_mapper.dart';
import 'package:weatheria/models/location.dart';

class WeatherRepository {
  final WeatherService service;

  WeatherRepository({required this.service});

  Future<CurrentWeather> getCurrentWeather(String param) async {
    var response =
        await service.getCurrentWeather(Config.apiKey, param, 'no');
    return response.toDomain();
  }

  Future<List<Location>> searchLocations(String keyword) async {
    var response = await service.search(Config.apiKey, keyword);
    List<Location> locations = List<Location>.empty(growable: true);
    response.forEach((element) {
      locations.add(element.toDomain());
    });
    return locations;
  }
}
