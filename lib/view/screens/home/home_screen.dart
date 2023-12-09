// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_app/controller/bloc/weather/weather_bloc.dart';
import 'package:forecast_app/view/screens/home/widgets/forecast_report_widget.dart';
import 'package:forecast_app/view/screens/home/widgets/header_widget.dart';
import 'package:forecast_app/view/screens/home/widgets/live_weather_widget.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  final String token;
  final String cityId;

  const HomeScreen({
    Key? key,
    required this.token,
    required this.cityId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Dispatching bloc events to fetch weather data
    BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.fetchWeather(
      cityId: cityId,
      token: token,
      context: context,
    ));
    BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.fetchSmallForcast(
      cityId: cityId,
      token: token,
      context: context,
    ));
    BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.fetchOtherForcast(
      cityId: cityId,
      token: token,
      context: context,
    ));

    return Scaffold(
      backgroundColor: HexColor('#47BFDF'),
      body: SafeArea(
        child: Stack(
          children: [
            // Background container with gradient
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    HexColor('#4A91FF'),
                    HexColor('#47BFDF'),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Location and Logout Row
                    HeaderWidget(size: size),
                    // Weather Icon
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 1, right: 1, top: 20),
                      child: Image.asset('assets/images/icon6.png'),
                    ),
                    // Weather Information Container
                    LiveWeatherWidget(size: size),
                    const SizedBox(height: 17),
                    // Forecast Report Button
                    ForcastReportButton(
                      cityId: cityId,
                      token: token,
                      size: size,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
