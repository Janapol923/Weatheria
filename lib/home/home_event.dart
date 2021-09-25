part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.load(String param) = _Load;

  const factory HomeEvent.error([String? message]) = _Error;
}
