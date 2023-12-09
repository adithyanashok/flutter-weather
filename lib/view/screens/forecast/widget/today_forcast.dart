import 'package:flutter/material.dart';
import 'package:forecast_app/view/screens/forecast/widget/glass_container.dart';
import 'package:forecast_app/view/widgets/forecast.dart';

class TodayForecast extends StatelessWidget {
  const TodayForecast({
    super.key,
    required this.weather,
  });

  final Map<String, dynamic> weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ForecastRow(
          value: '${weather['data1']['temperature']}\u2103',
          image: 'assets/images/icon13.png',
          time: '${weather['data1']['time']}',
        ),
        ForecastRow(
          value: '${weather['data2']['temperature']}\u2103',
          image: 'assets/images/icon11.png',
          time: '${weather['data2']['time']}',
        ),
        Stack(
          children: [
            const GlassContainer(width: 70, height: 150),
            ForecastRow(
              value: '${weather['data3']['temperature']}\u2103',
              image: 'assets/images/icon11.png',
              time: '${weather['data3']['time']}',
            ),
          ],
        ),
        ForecastRow(
          value: '${weather['data4']['temperature']}\u2103',
          image: 'assets/images/icon13.png',
          time: '${weather['data4']['time']}',
        ),
        ForecastRow(
          value: '${weather['data5']['temperature']}\u2103',
          image: 'assets/images/icon12.png',
          time: '${weather['data5']['time']}',
        ),
      ],
    );
  }
}
