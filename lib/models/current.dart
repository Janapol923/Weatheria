import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatheria/models/location.dart';

part 'current.freezed.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const CurrentWeather._();
  const factory CurrentWeather({
    required Location location,
    required Current current,
  }) = _CurrentWeather;
}

@freezed
class Current with _$Current {
  const Current._();
  const factory Current({
    required String temp,
    required Condition condition,
    required String windKph,
    required String windDegree,
    required String humidity,
    required String feelslike,
  }) = _Current;
}

@freezed
class Condition with _$Condition {
  const Condition._();
  const factory Condition({
    required String text,
    required String icon,
    required int code,
  }) = _Condition;
}
