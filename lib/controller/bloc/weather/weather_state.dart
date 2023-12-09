part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required Weather weather,
    required Map<String, dynamic> smallForcastList,
    required Map<String, dynamic> otherForcastList,
  }) = _WeatherState;

  factory WeatherState.initial() {
    return WeatherState(
      weather: Weather(),
      smallForcastList: {},
      otherForcastList: {},
    );
  }
}
