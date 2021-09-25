part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<Location> locations,
    @Default(false) bool isLoading,
  }) = _SearchState;
}
