import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_weather/blocs/theme/theme_bloc.dart';
import 'package:flutter_app_bloc_weather/repositories/repositories.dart';
import 'package:flutter_app_bloc_weather/simple_bloc_observer.dart';
import 'package:flutter_app_bloc_weather/widgets/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  final WeatherRepository weatherRepository = WeatherRepository(
    weatherApiClient: WeatherApiClient(
      httpClient: http.Client(),
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(
    BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: App(weatherRepository: weatherRepository),
    ),
  );
}
