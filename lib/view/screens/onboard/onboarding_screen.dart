import 'package:flutter/material.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/images/maps.png',
              color: Colors.red,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 55,
            top: 120,
            child: Image.asset(
              'assets/images/icon1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 170,
            top: 220,
            child: Image.asset(
              'assets/images/icon4.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 170,
            top: 280,
            child: Image.asset(
              'assets/images/icon10.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 70,
            top: 270,
            child: Image.asset(
              'assets/images/icon8.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 120,
            top: 70,
            child: Image.asset(
              'assets/images/icon2.png',
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: Container(
              width: size.width * 0.9,
              height: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 40),
                    child: Text(
                      'Expore global map of wind, weather, and ocean conditions',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Planing your trip become more easier with ideate weather app. you can instantly see the whole word weather within few second",
                      style: GoogleFonts.inter(
                        color: HexColor('#6B6A71'),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        width: 256,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              HexColor('#4A91FF'),
                              HexColor('#47BFDF'),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: InterText(
                            text: "Get Started",
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InterText(
                            text: "Already have an account ?",
                            color: HexColor('#393942'),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GradientText(
                            "Log In",
                            colors: [
                              HexColor('#4A91FF'),
                              HexColor('#47BFDF'),
                            ],
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
