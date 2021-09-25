import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatheria/domain/weather_repository.dart';
import 'package:weatheria/models/location.dart';

part 'search_bloc.freezed.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final WeatherRepository repository;

  SearchBloc(this.repository)
      : super(SearchState(
          locations: List<Location>.empty(growable: true),
        ));

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield* event.map(
      search: (value) async* {
        yield state.copyWith(isLoading: true);
        var locations = await repository.searchLocations(value.keyword);
        yield state.copyWith(locations: locations, isLoading: false);
      },
    );
  }
}
