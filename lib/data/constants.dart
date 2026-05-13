import 'package:flutter/material.dart';

class Constants {
  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 18),
    textStyle: const TextStyle(fontSize: 18),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 18),
    textStyle: const TextStyle(fontSize: 18),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static final ButtonStyle filledButtonStyle = FilledButton.styleFrom(
    padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 18),
    textStyle: const TextStyle(fontSize: 18),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
