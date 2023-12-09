import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:forecast_app/controller/live_weather.dart';
import 'package:forecast_app/model/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  // Initialize the WeatherBloc with the initial state.
  WeatherBloc() : super(WeatherState.initial()) {
    // Handle the event to fetch detailed weather information.
    on<_FetchWeather>((event, emit) async {
      // Call the fetchWeather function in the LiveWeatherController.
      final weather = await LiveWeatherController.fetchWeather(
          event.cityId, event.token, event.context);

      // Emit a new state with updated weather information.
      emit(state.copyWith(weather: weather));
    });

    // Handle the event to fetch small forecast information.
    on<_FetchSmallForcast>((event, emit) async {
      // Call the fetchSmallWeather function in the LiveWeatherController.
      final Map<String, dynamic> smallForecastList =
          await LiveWeatherController.fetchSmallWeather(
        event.cityId,
        event.token,
        event.context,
      );

      // Emit a new state with updated small forecast information.
      emit(state.copyWith(smallForcastList: smallForecastList));
    });

    // Handle the event to fetch other forecast information.
    on<_FetchOtherForcast>((event, emit) async {
      // Call the fetchOtherForcast function in the LiveWeatherController.
      final weather = await LiveWeatherController.fetchOtherForcast(
        event.cityId,
        event.token,
        event.context,
      );

      // Emit a new state with updated other forecast information.
      emit(state.copyWith(otherForcastList: weather));
    });
  }
}
