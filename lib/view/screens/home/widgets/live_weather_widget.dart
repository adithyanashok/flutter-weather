import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_app/controller/bloc/weather/weather_bloc.dart';
import 'package:forecast_app/view/widgets/forecast.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class LiveWeatherWidget extends StatelessWidget {
  const LiveWeatherWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: size.width * 0.9,
        height: 500,
        decoration: BoxDecoration(
          // Background with blur effect
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  final weather = state.weather;

                  // Weather details displayed in a Column
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Date and Temperature
                      const InterText(
                        text: 'Today, 12 September',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      Text(
                        '${weather.temperature ?? 0}\u00B0',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.overpass(
                          fontSize: 90,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          shadows: [
                            const Shadow(
                              blurRadius: 0.0,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ],
                        ),
                      ),
                      // Condition Text
                      InterText(
                        text: "${weather.condition}",
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      // Forecast details
                      Column(
                        children: [
                          Forcast(
                            name: "Time",
                            value: DateFormat('h:mm a').format(DateTime.now()),
                          ),
                          Forcast(
                              name: "Temperature",
                              value: "${weather.temperature}\u2103"),
                          Forcast(
                              name: "MaxTemperature",
                              value: "${weather.maxTemperature}\u2103"),
                          Forcast(
                              name: "MinTemperature",
                              value: "${weather.minTemperature}\u2103"),
                          Forcast(
                              name: "Condition", value: "${weather.condition}"),
                          Forcast(
                              name: "WindSpeed", value: "${weather.windSpeed}"),
                          Forcast(
                              name: "Humidity", value: "${weather.humidity} %"),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
