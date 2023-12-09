import 'package:flutter/material.dart';
import 'package:forecast_app/controller/auth_controller.dart';
import 'package:forecast_app/view/screens/signup/signup_screen.dart';
import 'package:forecast_app/view/util/snackbar.dart';
import 'package:forecast_app/view/widgets/button.dart';
import 'package:forecast_app/view/widgets/input_fields.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool check = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(height: 60),
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 20),
                // Text above input fields
                InterText(
                  text: 'Enter your email address and password',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#808080'),
                ),
                const SizedBox(height: 20),
                // Email input field
                TextInputField(hintText: "Email", controller: emailController),
                const SizedBox(height: 20),
                // Password input field
                TextInputField(
                  hintText: "Password",
                  obscureText: obscureText,
                  controller: passwordController,
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // "Remind me" checkbox
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: HexColor('#4A91FF'),
                        value: check,
                        onChanged: (value) {
                          setState(() {
                            check = value!;
                          });
                        },
                      ),
                      PlusJakartaText(
                        text: "Remind me",
                        fontSize: 14,
                        color: HexColor('#667280'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Login button
                CustomButton(
                  text: "Login",
                  onTap: () {
                    submit();
                  },
                ),
                const Spacer(),
                // "Don't have an account?" text and Signup link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InterText(
                      text: "Don’t have an account?",
                      color: HexColor('#393942'),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: GradientText(
                        "Signup",
                        colors: [
                          HexColor('#4A91FF'),
                          HexColor('#47BFDF'),
                        ],
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to handle the login submission
  Future<void> submit() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      AuthController.loginUser(
        emailController.text,
        passwordController.text,
        check,
        context,
      );
    } else {
      // Show a snackbar if fields are not filled
      snackBar(context: context, msg: "Fill all the fields");
    }
  }
}
