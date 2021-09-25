import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weatheria/models/current_response.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: 'http://api.weatherapi.com/')
abstract class WeatherService {
  factory WeatherService(Dio dio, {String baseUrl}) = _WeatherService;

  @GET('v1/current.json')
  Future<CurrentWeatherResponse> getCurrentWeather(
    @Query('key') String apikey,
    @Query('q') String searchParam,
    @Query('aqi') String aqi,
  );
}
