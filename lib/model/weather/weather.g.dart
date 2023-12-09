// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      temperature: json['temperature'] as int?,
      maxTemperature: json['maxTemperature'] as int?,
      minTemperature: json['minTemperature'] as int?,
      condition: json['condition'] as String?,
      windSpeed: json['windSpeed'] as int?,
      humidity: json['humidity'] as int?,
      cityId: json['cityId'] as String?,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'maxTemperature': instance.maxTemperature,
      'minTemperature': instance.minTemperature,
      'condition': instance.condition,
      'windSpeed': instance.windSpeed,
      'humidity': instance.humidity,
      'cityId': instance.cityId,
    };
