import 'package:weatheria/models/current.dart';
import 'package:weatheria/models/current_response.dart';
import 'package:weatheria/models/location.dart';

extension CurrentWeatherMapper on CurrentWeatherResponse {
  CurrentWeather toDomain() => CurrentWeather(
        current: current.toDomain(),
        location: location.toDomain(),
      );
}

extension CurrentMapper on RawCurrent {
  Current toDomain() => Current(
        temp: temp_c.toInt().toString(),
        condition: Condition(
          text: condition.text,
          icon: 'http:' + condition.icon,
          code: condition.code,
        ),
        windKph: wind_kph.toInt().toString(),
        windDegree: wind_degree.toInt().toString(),
        humidity: humidity.toInt().toString(),
        feelslike: feelslike_c.toInt().toString(),
      );
}

extension LocationMapper on RawLocation {
  Location toDomain() => Location(
        name: name,
        region: region,
        country: country,
        lat: lat,
        lon: lon,
        localtime: localtime,
        url: url,
      );
}
