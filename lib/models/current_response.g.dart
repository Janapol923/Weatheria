// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return CurrentWeatherResponse(
    location: RawLocation.fromJson(json['location'] as Map<String, dynamic>),
    current: RawCurrent.fromJson(json['current'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CurrentWeatherResponseToJson(
        CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

RawCurrent _$RawCurrentFromJson(Map<String, dynamic> json) {
  return RawCurrent(
    temp_c: (json['temp_c'] as num).toDouble(),
    condition: RawCondition.fromJson(json['condition'] as Map<String, dynamic>),
    wind_kph: (json['wind_kph'] as num).toDouble(),
    wind_degree: (json['wind_degree'] as num).toDouble(),
    humidity: (json['humidity'] as num).toDouble(),
    feelslike_c: (json['feelslike_c'] as num).toDouble(),
  );
}

Map<String, dynamic> _$RawCurrentToJson(RawCurrent instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
      'condition': instance.condition,
      'wind_kph': instance.wind_kph,
      'wind_degree': instance.wind_degree,
      'humidity': instance.humidity,
      'feelslike_c': instance.feelslike_c,
    };

RawCondition _$RawConditionFromJson(Map<String, dynamic> json) {
  return RawCondition(
    text: json['text'] as String,
    icon: json['icon'] as String,
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$RawConditionToJson(RawCondition instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

RawLocation _$RawLocationFromJson(Map<String, dynamic> json) {
  return RawLocation(
    name: json['name'] as String,
    region: json['region'] as String,
    country: json['country'] as String,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    localtime: json['localtime'] as String?,
  );
}

Map<String, dynamic> _$RawLocationToJson(RawLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'localtime': instance.localtime,
    };
