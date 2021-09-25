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
          return Stack(
            children: [
              Column(
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
                                '${state.current?.temp}\u00B0',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    ?.copyWith(color: Colors.white),
                              ),
                              const SizedBox(width: 16),
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
                                      'Feels like ${state.current?.feelslike}\u2103',
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
                        if (state.location != null)
                          Text(
                            _formatLocationName(
                              state.location!.name,
                              state.location!.region,
                              state.location!.country,
                            ),
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
              ),
              if (state.isLoading)
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                      child: Center(
                        child: CircularProgressIndicator(color: Colors.blue),
                      ),
                      constraints: BoxConstraints.expand(),
                    )
                  ],
                )
            ],
          );
        }),
      ),
    );
  }

  String _formatLocationName(String name, String region, String country) {
    if (name == region)
      return '$region, $country';
    else
      return '$name, $region, $country';
  }
}
