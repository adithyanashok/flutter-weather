import 'package:flutter/material.dart';
import 'package:forecast_app/view/screens/forecast/forecast_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ForcastReportButton extends StatelessWidget {
  const ForcastReportButton({
    super.key,
    required this.cityId,
    required this.token,
    required this.size,
  });

  final String cityId;
  final String token;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ForeCastScreen(
              cityId: cityId,
              token: token,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Container(
          width: size.width * 0.5,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Forecast report',
                textAlign: TextAlign.center,
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  shadows: [
                    const Shadow(
                      blurRadius: 0.0,
                      color: Color.fromARGB(255, 230, 228, 228),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
