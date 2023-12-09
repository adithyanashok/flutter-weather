import 'package:flutter/material.dart';

snackBar({
  required BuildContext context,
  required String msg,
}) {
  final snackBar = SnackBar(
    content: Text(
      msg,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
    elevation: 2,
    backgroundColor: Colors.red,
    duration: const Duration(seconds: 10),
    behavior: SnackBarBehavior.floating,
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
