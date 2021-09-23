
import 'package:flutter/material.dart';
import 'package:weatheria/constants/WeatherColors.dart';

class WeatherUtil {

  static List<Color> getColorsByWeatherConditions(int code) {
    if (code >= 1072) return WeatherColors.thunderstormSkyDay;
    else if (code >= 1030) return WeatherColors.rainySkyDay;
    else if (code >= 1003) return WeatherColors.cloudySkyDay;
    else return WeatherColors.clearSkyDay;
  }
}
