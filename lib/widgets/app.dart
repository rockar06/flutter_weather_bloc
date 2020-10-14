import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_weather/blocs/blocs.dart';
import 'package:flutter_app_bloc_weather/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets.dart';

class App extends StatelessWidget {
  final WeatherRepository weatherRepository;

  App({Key key, @required this.weatherRepository})
      : assert(weatherRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
          title: 'Flutter Weather',
          theme: themeState.theme,
          home: BlocProvider(
            create: (context) =>
                WeatherBloc(weatherRepository: weatherRepository),
            child: Weather(),
          ),
        );
      },
    );
  }
}
