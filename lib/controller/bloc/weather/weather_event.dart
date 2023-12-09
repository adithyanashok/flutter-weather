part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchWeather({
    required String cityId,
    required String token,
    required BuildContext context,
  }) = _FetchWeather;

  const factory WeatherEvent.fetchSmallForcast({
    required String cityId,
    required String token,
    required BuildContext context,
  }) = _FetchSmallForcast;

  const factory WeatherEvent.fetchOtherForcast({
    required String cityId,
    required String token,
    required BuildContext context,
  }) = _FetchOtherForcast;
}
