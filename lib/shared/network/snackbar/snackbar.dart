import 'package:flutter/material.dart';

void snackBar(
  context,
  String text, {
  String label = 'Ok',
  required Function() onPressed,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xffED1B35),
      action: SnackBarAction(
        textColor: Colors.white,
        label: label,
        onPressed: onPressed,
      ),
      content: Text(text),
      duration: const Duration(milliseconds: 2000),
      width: 350.0, // Width of the SnackBar.
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0, // Inner padding for SnackBar content.
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
  );
}
