import 'package:flutter/material.dart';
import 'package:forecast_app/view/widgets/text.dart';

class NextForecastWidget extends StatelessWidget {
  const NextForecastWidget({
    super.key,
    required this.date,
    required this.image,
    required this.value,
  });
  final String date;
  final String image;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InterText(
            text: date,
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          Image.asset(
            image,
            width: 40,
          ),
          InterText(
            text: '$value\u2103',
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          )
        ],
      ),
    );
  }
}
