import 'package:flutter/material.dart';
import 'package:forecast_app/view/screens/login/login_screen.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupCompleted extends StatelessWidget {
  const SignupCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 180),
                SizedBox(
                  width: 260,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      // Congratulations text
                      Text(
                        'Congratulations',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: HexColor('#101010'),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Success message text
                      Text(
                        'Your Account Created Successfully',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: HexColor('#474F5A'),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Back to Login button
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      // Text for the Back to Login button
                      PlusJakartaText(text: 'Back to Login'),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
