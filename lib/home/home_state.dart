part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Location? location,
    Current? current,
  }) = _HomeState;
}
