import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatheria/domain/weather_repository.dart';
import 'package:weatheria/models/current.dart';
import 'package:weatheria/models/location.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WeatherRepository repository;

  HomeBloc(this.repository) : super(HomeState()) {
    add(HomeEvent.init());
  }

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      init: (value) async* {
        var currentWeather = await repository.getCurrentWeather();
        yield state.copyWith(
          current: currentWeather.current,
          location: currentWeather.location,
        );
      },
      refresh: (value) async* {},
      error: (value) async* {},
    );
  }
}
