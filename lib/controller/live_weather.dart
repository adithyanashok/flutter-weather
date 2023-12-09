import 'dart:convert';

import 'package:forecast_app/core/api.dart';

import 'package:forecast_app/model/weather/weather.dart';
import 'package:forecast_app/view/util/snackbar.dart';
import 'package:http/http.dart' as http;

class LiveWeatherController {
  static Future<Weather> fetchWeather(cityId, token, context) async {
    try {
      // Make a GET request to fetch weather data for a specific city.
      var res = await http.get(
        Uri.parse('$baseUrl/live-weather/$cityId'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      );

      // Decode the response body from JSON.
      final response = jsonDecode(res.body);

      if (response['status'] == true) {
        // If the status is true, extract weather data from the response.
        final weatherData = response['data'];

        // Create a Weather object with the extracted data.
        final returnValue = Weather(
          temperature: weatherData['temperature'],
          maxTemperature: weatherData['maxTemperature'],
          minTemperature: weatherData['minTemperature'],
          condition: weatherData['condition'],
          humidity: weatherData['humidity'],
          cityId: weatherData['cityId'],
          windSpeed: weatherData['windSpeed'],
        );

        // Return the Weather object.
        return returnValue;
      } else if (response['status'] == false) {
        // If the status is false, display a snackbar with the error message
        snackBar(context: context, msg: response['message'].toString());
        return Weather();
      } else {
        // Handle unexpected response status or format,
        snackBar(context: context, msg: response['message']);
        return Weather();
      }
    } catch (e) {
      // Handle any exceptions
      snackBar(context: context, msg: "Something went wrong..");
      // Retrun Weather model
      return Weather();
    }
  }

  static Future<Map<String, dynamic>> fetchSmallWeather(
      cityId, token, context) async {
    try {
      // Make a GET request to fetch small forecast data for a specific city.
      var res = await http.get(
        Uri.parse('$baseUrl/view-small-forecast/$cityId'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      );

      // Decode the response body from JSON.
      final Map<String, dynamic> jsonData = jsonDecode(res.body);

      // Initialize an empty map to store the parsed data.
      Map<String, dynamic> data = {};

      // Iterate over the "DATA" list in the JSON response.
      for (var elem in jsonData["DATA"]) {
        // Assign each element to the 'data' map.
        data = elem;
      }

      // Return the parsed data.
      return data;
    } catch (e) {
      // Handle any exceptions
      snackBar(context: context, msg: "Something went wrong...");
      return {};
    }
  }

  static Future<Map<String, dynamic>> fetchOtherForcast(
      cityId, token, context) async {
    try {
      // Make a GET request to fetch other forecast data for a specific city.
      var res = await http.get(
        Uri.parse('$baseUrl/view-other-forecast/$cityId'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      );

      // Decode the response body from JSON.
      final Map<String, dynamic> jsonData = jsonDecode(res.body);

      // Return the "DATA" map from the JSON response.
      return jsonData['DATA'];
    } catch (e) {
      // Handle any exceptions
      snackBar(context: context, msg: "Something went wrong...");
      return {};
    }
  }
}
