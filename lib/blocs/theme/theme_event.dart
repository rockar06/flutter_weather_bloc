import 'package:equatable/equatable.dart';
import 'package:flutter_app_bloc_weather/models/models.dart';
import 'package:meta/meta.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class WeatherChanged extends ThemeEvent {
  final WeatherCondition condition;

  const WeatherChanged({@required this.condition}) : assert(condition != null);

  @override
  List<Object> get props => [condition];
}
