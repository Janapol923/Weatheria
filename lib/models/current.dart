import 'package:freezed_annotation/freezed_annotation.dart';

part 'current.freezed.dart';

@freezed
class Current with _$Current {
  const Current._();
  const factory Current({
    required double temp,
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
    required String code,
  }) = _Condition;
}
