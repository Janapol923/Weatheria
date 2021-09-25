import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weatheria/di/network_di.dart';
import 'package:weatheria/di/weather_di.dart';
import 'package:weatheria/home/home_screen.dart';

void main() {
  setupDi();
  runApp(MyApp());
}

void setupDi() {
  var getIt = GetIt.instance;

  var dis = [
    NetworkDi(),
    WeatherDi(),
  ];

  dis.forEach((element) {
    element.registerDependencies(getIt);
  });
}

abstract class DependencyInjection {
  registerDependencies(GetIt c);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Quicksand',
      ),
      home: HomeScreen(),
    );
  }
}
