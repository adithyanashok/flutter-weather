import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InterText extends StatelessWidget {
  const InterText(
      {super.key,
      required this.text,
      this.fontSize = 14,
      this.fontWeight = FontWeight.bold,
      this.color = Colors.black});
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class PlusJakartaText extends StatelessWidget {
  const PlusJakartaText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
