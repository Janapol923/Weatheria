// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentTearOff {
  const _$CurrentTearOff();

  _Current call(
      {required double temp,
      required Condition condition,
      required String windKph,
      required String windDegree,
      required String humidity,
      required String feelslike}) {
    return _Current(
      temp: temp,
      condition: condition,
      windKph: windKph,
      windDegree: windDegree,
      humidity: humidity,
      feelslike: feelslike,
    );
  }
}

/// @nodoc
const $Current = _$CurrentTearOff();

/// @nodoc
mixin _$Current {
  double get temp => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  String get windKph => throw _privateConstructorUsedError;
  String get windDegree => throw _privateConstructorUsedError;
  String get humidity => throw _privateConstructorUsedError;
  String get feelslike => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res>;
  $Res call(
      {double temp,
      Condition condition,
      String windKph,
      String windDegree,
      String humidity,
      String feelslike});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res> implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  final Current _value;
  // ignore: unused_field
  final $Res Function(Current) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? condition = freezed,
    Object? windKph = freezed,
    Object? windDegree = freezed,
    Object? humidity = freezed,
    Object? feelslike = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windKph: windKph == freezed
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as String,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      feelslike: feelslike == freezed
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) then) =
      __$CurrentCopyWithImpl<$Res>;
  @override
  $Res call(
      {double temp,
      Condition condition,
      String windKph,
      String windDegree,
      String humidity,
      String feelslike});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$CurrentCopyWithImpl<$Res> extends _$CurrentCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(_Current _value, $Res Function(_Current) _then)
      : super(_value, (v) => _then(v as _Current));

  @override
  _Current get _value => super._value as _Current;

  @override
  $Res call({
    Object? temp = freezed,
    Object? condition = freezed,
    Object? windKph = freezed,
    Object? windDegree = freezed,
    Object? humidity = freezed,
    Object? feelslike = freezed,
  }) {
    return _then(_Current(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windKph: windKph == freezed
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as String,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      feelslike: feelslike == freezed
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Current extends _Current {
  const _$_Current(
      {required this.temp,
      required this.condition,
      required this.windKph,
      required this.windDegree,
      required this.humidity,
      required this.feelslike})
      : super._();

  @override
  final double temp;
  @override
  final Condition condition;
  @override
  final String windKph;
  @override
  final String windDegree;
  @override
  final String humidity;
  @override
  final String feelslike;

  @override
  String toString() {
    return 'Current(temp: $temp, condition: $condition, windKph: $windKph, windDegree: $windDegree, humidity: $humidity, feelslike: $feelslike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Current &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.windKph, windKph) ||
                const DeepCollectionEquality()
                    .equals(other.windKph, windKph)) &&
            (identical(other.windDegree, windDegree) ||
                const DeepCollectionEquality()
                    .equals(other.windDegree, windDegree)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.feelslike, feelslike) ||
                const DeepCollectionEquality()
                    .equals(other.feelslike, feelslike)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(windKph) ^
      const DeepCollectionEquality().hash(windDegree) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(feelslike);

  @JsonKey(ignore: true)
  @override
  _$CurrentCopyWith<_Current> get copyWith =>
      __$CurrentCopyWithImpl<_Current>(this, _$identity);
}

abstract class _Current extends Current {
  const factory _Current(
      {required double temp,
      required Condition condition,
      required String windKph,
      required String windDegree,
      required String humidity,
      required String feelslike}) = _$_Current;
  const _Current._() : super._();

  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  Condition get condition => throw _privateConstructorUsedError;
  @override
  String get windKph => throw _privateConstructorUsedError;
  @override
  String get windDegree => throw _privateConstructorUsedError;
  @override
  String get humidity => throw _privateConstructorUsedError;
  @override
  String get feelslike => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrentCopyWith<_Current> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConditionTearOff {
  const _$ConditionTearOff();

  _Condition call(
      {required String text, required String icon, required String code}) {
    return _Condition(
      text: text,
      icon: icon,
      code: code,
    );
  }
}

/// @nodoc
const $Condition = _$ConditionTearOff();

/// @nodoc
mixin _$Condition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res>;
  $Res call({String text, String icon, String code});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res> implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  final Condition _value;
  // ignore: unused_field
  final $Res Function(Condition) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ConditionCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory _$ConditionCopyWith(
          _Condition value, $Res Function(_Condition) then) =
      __$ConditionCopyWithImpl<$Res>;
  @override
  $Res call({String text, String icon, String code});
}

/// @nodoc
class __$ConditionCopyWithImpl<$Res> extends _$ConditionCopyWithImpl<$Res>
    implements _$ConditionCopyWith<$Res> {
  __$ConditionCopyWithImpl(_Condition _value, $Res Function(_Condition) _then)
      : super(_value, (v) => _then(v as _Condition));

  @override
  _Condition get _value => super._value as _Condition;

  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_Condition(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Condition extends _Condition {
  const _$_Condition(
      {required this.text, required this.icon, required this.code})
      : super._();

  @override
  final String text;
  @override
  final String icon;
  @override
  final String code;

  @override
  String toString() {
    return 'Condition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Condition &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ConditionCopyWith<_Condition> get copyWith =>
      __$ConditionCopyWithImpl<_Condition>(this, _$identity);
}

abstract class _Condition extends Condition {
  const factory _Condition(
      {required String text,
      required String icon,
      required String code}) = _$_Condition;
  const _Condition._() : super._();

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConditionCopyWith<_Condition> get copyWith =>
      throw _privateConstructorUsedError;
}
