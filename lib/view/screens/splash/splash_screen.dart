// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast_app/controller/bloc/weather/weather_bloc.dart';
import 'package:forecast_app/view/screens/home/home_screen.dart';
import 'package:forecast_app/view/screens/login/login_screen.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  String cityId = '';

  @override
  Widget build(BuildContext context) {
    // Delayed navigation logic
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        final token = prefs.getString('token');
        final cityId = prefs.getString('cityId');
        final remindMe = prefs.getBool('remindMe');

        if (token != null) {
          // Check if the token is expired
          bool isExpired = Jwt.isExpired(token);
          if (isExpired) {
            // Navigate to LoginScreen if token is expired
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          } else {
            // Fetch weather data if token is valid
            BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.fetchWeather(
              cityId: cityId!,
              token: token,
              context: context,
            ));

            // Navigate based on the 'remindMe' preference
            if (remindMe == true) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) =>
                      HomeScreen(token: token, cityId: cityId),
                ),
                (route) => false,
              );
            } else {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            }
          }
        } else {
          // Navigate to LoginScreen if no token is found
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        }
      },
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            GradientText(
              'Forecasting',
              style: const TextStyle(
                fontSize: 45.82,
                fontWeight: FontWeight.bold,
              ),
              colors: [
                HexColor('#47BFDF'),
                HexColor('#4A91FF'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
