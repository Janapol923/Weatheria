import 'package:json_annotation/json_annotation.dart';
part 'current_response.g.dart';

@JsonSerializable()
class CurrentWeatherResponse {
  final RawLocation location;
  final RawCurrent current;

  CurrentWeatherResponse({
    required this.location,
    required this.current,
  });

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherResponseToJson(this);
}

@JsonSerializable()
class RawCurrent {
  final double temp_c;
  final RawCondition condition;
  final double wind_kph;
  final double wind_degree;
  final double humidity;
  final double feelslike_c;

  RawCurrent({
    required this.temp_c,
    required this.condition,
    required this.wind_kph,
    required this.wind_degree,
    required this.humidity,
    required this.feelslike_c,
  });

  factory RawCurrent.fromJson(Map<String, dynamic> json) =>
      _$RawCurrentFromJson(json);

  Map<String, dynamic> toJson() => _$RawCurrentToJson(this);
}

@JsonSerializable()
class RawCondition {
  final String text;
  final String icon;
  final int code;

  RawCondition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory RawCondition.fromJson(Map<String, dynamic> json) =>
      _$RawConditionFromJson(json);

  Map<String, dynamic> toJson() => _$RawConditionToJson(this);
}

@JsonSerializable()
class RawLocation {
  final String name;
  final String region;
  final String country;
  final double? lat;
  final double? lon;
  final String? localtime;
  final String? url;

  RawLocation({
    required this.name,
    required this.region,
    required this.country,
    this.lat,
    this.lon,
    this.localtime,
    this.url,
  });

  factory RawLocation.fromJson(Map<String, dynamic> json) =>
      _$RawLocationFromJson(json);

  Map<String, dynamic> toJson() => _$RawLocationToJson(this);
}
