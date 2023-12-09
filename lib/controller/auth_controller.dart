import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:forecast_app/core/api.dart';
import 'package:forecast_app/model/user/user.dart';
import 'package:forecast_app/view/screens/home/home_screen.dart';
import 'package:forecast_app/view/screens/login/login_screen.dart';
import 'package:forecast_app/view/screens/signup/signup_completed.dart';
import 'package:forecast_app/view/util/snackbar.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static Future<void> createUser(User user, context) async {
    try {
      // Make a POST request to the backend API to create a new user.
      var res = await http.post(
        Uri.parse('$baseUrl/create-user'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(user.toJson()),
      );

      // Decode the response body from JSON.
      final response = jsonDecode(res.body);

      // Check the status of the response and take appropriate actions.
      if (response['status'] == true) {
        // If the user creation is successful, navigate to the SignupCompleted screen.
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SignupCompleted(),
          ),
        );
      } else if (response['status'] == false) {
        // If the status is false, display a snackbar with the error message.
        snackBar(context: context, msg: response['message'].toString());
      } else {
        // Handle unexpected response status or format, display a snackbar with the message.
        snackBar(context: context, msg: response['message']);
      }
    } catch (e) {
      // Handle any exceptions
      snackBar(context: context, msg: "Something wen wrong...");
    }
  }

  static Future<void> loginUser(
      String email, String password, bool remindMe, context) async {
    // Prepare the data for the login request.
    var data = {"email": email, "password": password};
    try {
      // Get the SharedPreferences instance
      SharedPreferences prefs = await SharedPreferences.getInstance();

      // Make a POST request to the backend API for user login.
      var res = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );

      // Decode the response body from JSON.
      final response = jsonDecode(res.body);

      if (response['msg'] == 'login successfull') {
        // If login is successful, extract token and cityId from the response.
        String token = response['token'];
        String cityId = response['liveWeather']['cityId'];

        // Save the token to SharedPreferences.
        prefs.setString('token', token);

        // If the "Remind Me" option is selected, set the remindMe flag to true.
        if (remindMe) {
          prefs.setBool('remindMe', true);
        }

        // Save the cityId to SharedPreferences.
        prefs.setString('cityId', cityId);

        // Navigate to the HomeScreen with the obtained token and cityId.
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomeScreen(
              token: token,
              cityId: cityId,
            ),
          ),
        );
      } else if (response['status'] == false) {
        // If login status is false, display a snackbar with the error message.
        snackBar(context: context, msg: response['msg'].toString());
      } else {
        // Handle unexpected response status or format, display a snackbar with the message.
        snackBar(context: context, msg: response['message']);
      }
    } catch (e) {
      // Handle any exceptions
      snackBar(context: context, msg: e.toString());
    }
  }

  // Function to log out the user
  static Future<void> logout(context) async {
    // Get SharedPreferences instance
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Remove the token from SharedPreferences
    await prefs.remove('token');

    // Navigate to the login screen and remove all other screens from the stack
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
      (route) => false,
    );
  }
}
