import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const Location._();
  const factory Location({
    required String name,
    required String region,
    required String country,
    double? lat,
    double? lon,
    String? localtime,
    String? url,
  }) = _Location;
}
