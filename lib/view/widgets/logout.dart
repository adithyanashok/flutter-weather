import 'package:flutter/material.dart';
import 'package:forecast_app/controller/auth_controller.dart';
import 'package:forecast_app/view/screens/home/home_screen.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:hexcolor/hexcolor.dart';

Future<dynamic> LogoutPopup(BuildContext context, Size size) {
  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        backgroundColor: Colors.white,
        children: [
          Container(
            width: size.width * 0.9,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/power.png',
                ),
                const InterText(
                  text: "Log out",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                InterText(
                  text: "Are you sure you want to logout from app",
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#6B6A71'),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoutOptionsButton(
                      backgroundColor: HexColor('#FF6D6D'),
                      text: "Logout",
                      textColor: Colors.white,
                      size: size,
                      onTap: () {
                        AuthController.logout(context);
                      },
                    ),
                    const SizedBox(width: 10),
                    LogoutOptionsButton(
                      backgroundColor: HexColor('#F1EFEF'),
                      text: "Cancel",
                      textColor: HexColor('#080713'),
                      size: size,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      );
    },
  );
}

class LogoutOptionsButton extends StatelessWidget {
  const LogoutOptionsButton({
    super.key,
    required this.size,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.onTap,
  });

  final Size size;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: size.width * .3,
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Center(
          child: InterText(
            text: text,
            color: textColor,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
