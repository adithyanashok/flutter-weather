import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    int? temperature,
    int? maxTemperature,
    int? minTemperature,
    String? condition,
    int? windSpeed,
    int? humidity,
    String? cityId,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
