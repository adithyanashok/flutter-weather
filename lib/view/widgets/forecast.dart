import 'package:flutter/material.dart';
import 'package:forecast_app/view/widgets/text.dart';

class Forcast extends StatelessWidget {
  const Forcast({
    super.key,
    required this.name,
    required this.value,
  });
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/windy.png'),
              const SizedBox(width: 20),
              InterText(
                text: name,
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              )
            ],
          ),
          InterText(
            text: value,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class ForecastRow extends StatelessWidget {
  const ForecastRow({
    super.key,
    required this.value,
    required this.image,
    required this.time,
  });
  final String value;
  final String image;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 80,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InterText(
            text: value,
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: Colors.white,
          ),
          Image.asset(image),
          InterText(
            text: time,
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
