import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_app/controller/bloc/weather/weather_bloc.dart';
import 'package:forecast_app/view/screens/forecast/widget/next_forcast.dart';
import 'package:forecast_app/view/screens/forecast/widget/today_forcast.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:hexcolor/hexcolor.dart';

class ForeCastScreen extends StatelessWidget {
  final String cityId;
  final String token;
  const ForeCastScreen({super.key, required this.cityId, required this.token});

  @override
  Widget build(BuildContext context) {
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
      body: Stack(
        children: [
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
            child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                // Extract forecast data from the current state
                final weather = state.smallForcastList;
                final otherForcast = state.otherForcastList;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back button
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 45),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            InterText(
                              text: "Back",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    // Today's date and forecast
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InterText(
                            text: "Today",
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          InterText(
                            text: "Sep, 12",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    // Today's forecast rows
                    TodayForecast(weather: weather),
                    // Next forecast section title
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InterText(
                            text: 'Next Forecast',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    // Next forecast widgets
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon12.png',
                      value: '${otherForcast['day1']['temperature']}',
                    ),
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon11.png',
                      value: '${otherForcast['day2']['temperature']}',
                    ),
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon13.png',
                      value: '${otherForcast['day3']['temperature']}',
                    ),
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon13.png',
                      value: '${otherForcast['day4']['temperature']}',
                    ),
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon12.png',
                      value: '${otherForcast['day5']['temperature']}',
                    ),
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon13.png',
                      value: '${otherForcast['day6']['temperature']}',
                    ),
                    NextForecastWidget(
                      date: 'Sep, 13',
                      image: 'assets/images/icon12.png',
                      value: '${otherForcast['day7']['temperature']}',
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
