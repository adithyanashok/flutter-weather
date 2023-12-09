import 'package:flutter/material.dart';
import 'package:forecast_app/controller/auth_controller.dart';
import 'package:forecast_app/model/user/user.dart';
import 'package:forecast_app/view/screens/login/login_screen.dart';
import 'package:forecast_app/view/util/snackbar.dart';
import 'package:forecast_app/view/widgets/button.dart';
import 'package:forecast_app/view/widgets/input_fields.dart';
import 'package:forecast_app/view/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String country = '';
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
                const SizedBox(height: 40),
                // Full Name input field
                TextInputField(
                  hintText: "Full Name",
                  controller: nameController,
                ),
                const SizedBox(height: 20),
                // Phone Number input field
                TextInputField(
                  hintText: "Phone Number",
                  controller: phoneController,
                ),
                const SizedBox(height: 20),
                // Custom Dropdown Button
                CustomDropDownButton(
                  onChange: (value) {
                    country = value;
                  },
                ),
                const SizedBox(height: 20),
                // Email input field
                TextInputField(
                  hintText: "Email",
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                // Password input field
                TextInputField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: obscureText,
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
                const SizedBox(height: 25),
                // Signup button
                CustomButton(
                  text: "Signup",
                  onTap: () {
                    submit();
                  },
                ),
                const Spacer(),
                // "Already have an account?" text and Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InterText(
                      text: "Already have an account?",
                      color: HexColor('#393942'),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: GradientText(
                        "Log In",
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

  // Function to handle the signup submission
  void submit() {
    if (nameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        country.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      // Create a User object and call the createUser method from AuthController
      final user = User(
        name: nameController.text,
        phone: phoneController.text,
        country: country,
        email: emailController.text,
        password: passwordController.text,
      );
      AuthController.createUser(user, context);
    } else {
      // Show a snackbar if fields are not filled
      snackBar(context: context, msg: "Fill all the fields");
    }
  }
}
