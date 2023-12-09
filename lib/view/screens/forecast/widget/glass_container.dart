import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double width;
  final double height;

  const GlassContainer({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 50,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.6),
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
