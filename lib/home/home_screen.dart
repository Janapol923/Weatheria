import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weatheria/domain/weather_repository.dart';
import 'package:weatheria/home/home_bloc.dart';
import 'package:weatheria/util/weather_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(GetIt.instance<WeatherRepository>()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Current Weather'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: WeatherUtil.getColorsByWeatherConditions(
                      state.current?.condition.code ?? 1000,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Currently',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            state.current?.temp ?? '--',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.white),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.current?.condition.text ?? '--',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: Colors.white),
                                ),
                                Text(
                                  'Feels like ${state.current?.feelslike} C',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          if (state.current?.condition.icon != null)
                            Image.network(
                              state.current!.condition.icon,
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${state.location?.region}, ${state.location?.country}',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Today, ${state.location?.localtime}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      state.current?.condition.text ?? '',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
